
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc_chunk {int * current_ptr; int * next; } ;
struct objalloc {char* current_ptr; int current_space; int * chunks; } ;
typedef int * PTR ;


 int CHUNK_HEADER_SIZE ;
 int CHUNK_SIZE ;
 int free (struct objalloc*) ;
 scalar_t__ malloc (int) ;

struct objalloc *
objalloc_create (void)
{
  struct objalloc *ret;
  struct objalloc_chunk *chunk;

  ret = (struct objalloc *) malloc (sizeof *ret);
  if (ret == ((void*)0))
    return ((void*)0);

  ret->chunks = (PTR) malloc (CHUNK_SIZE);
  if (ret->chunks == ((void*)0))
    {
      free (ret);
      return ((void*)0);
    }

  chunk = (struct objalloc_chunk *) ret->chunks;
  chunk->next = ((void*)0);
  chunk->current_ptr = ((void*)0);

  ret->current_ptr = (char *) chunk + CHUNK_HEADER_SIZE;
  ret->current_space = CHUNK_SIZE - CHUNK_HEADER_SIZE;

  return ret;
}
