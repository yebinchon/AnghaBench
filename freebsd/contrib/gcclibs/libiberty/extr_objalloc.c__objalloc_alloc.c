
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc_chunk {char* current_ptr; struct objalloc_chunk* next; } ;
struct objalloc {unsigned long current_space; char* current_ptr; int * chunks; } ;
typedef int * PTR ;


 unsigned long BIG_REQUEST ;
 unsigned long CHUNK_HEADER_SIZE ;
 unsigned long CHUNK_SIZE ;
 unsigned long OBJALLOC_ALIGN ;
 scalar_t__ malloc (unsigned long) ;
 int * objalloc_alloc (struct objalloc*,unsigned long) ;

PTR
_objalloc_alloc (struct objalloc *o, unsigned long original_len)
{
  unsigned long len = original_len;



  if (len == 0)
    len = 1;

  len = (len + OBJALLOC_ALIGN - 1) &~ (OBJALLOC_ALIGN - 1);



  if (len + CHUNK_HEADER_SIZE < original_len)
      return ((void*)0);

  if (len <= o->current_space)
    {
      o->current_ptr += len;
      o->current_space -= len;
      return (PTR) (o->current_ptr - len);
    }

  if (len >= BIG_REQUEST)
    {
      char *ret;
      struct objalloc_chunk *chunk;

      ret = (char *) malloc (CHUNK_HEADER_SIZE + len);
      if (ret == ((void*)0))
 return ((void*)0);

      chunk = (struct objalloc_chunk *) ret;
      chunk->next = (struct objalloc_chunk *) o->chunks;
      chunk->current_ptr = o->current_ptr;

      o->chunks = (PTR) chunk;

      return (PTR) (ret + CHUNK_HEADER_SIZE);
    }
  else
    {
      struct objalloc_chunk *chunk;

      chunk = (struct objalloc_chunk *) malloc (CHUNK_SIZE);
      if (chunk == ((void*)0))
 return ((void*)0);
      chunk->next = (struct objalloc_chunk *) o->chunks;
      chunk->current_ptr = ((void*)0);

      o->current_ptr = (char *) chunk + CHUNK_HEADER_SIZE;
      o->current_space = CHUNK_SIZE - CHUNK_HEADER_SIZE;

      o->chunks = (PTR) chunk;

      return objalloc_alloc (o, len);
    }
}
