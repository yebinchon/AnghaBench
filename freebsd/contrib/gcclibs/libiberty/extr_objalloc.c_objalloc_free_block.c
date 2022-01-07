
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc_chunk {char* current_ptr; struct objalloc_chunk* next; } ;
struct objalloc {char* current_ptr; int current_space; void* chunks; } ;
typedef void* PTR ;


 int CHUNK_HEADER_SIZE ;
 int CHUNK_SIZE ;
 int abort () ;
 int free (struct objalloc_chunk*) ;

void
objalloc_free_block (struct objalloc *o, PTR block)
{
  struct objalloc_chunk *p, *small;
  char *b = (char *) block;



  small = ((void*)0);
  for (p = (struct objalloc_chunk *) o->chunks; p != ((void*)0); p = p->next)
    {
      if (p->current_ptr == ((void*)0))
 {
   if (b > (char *) p && b < (char *) p + CHUNK_SIZE)
     break;
   small = p;
 }
      else
 {
   if (b == (char *) p + CHUNK_HEADER_SIZE)
     break;
 }
    }


  if (p == ((void*)0))
    abort ();

  if (p->current_ptr == ((void*)0))
    {
      struct objalloc_chunk *q;
      struct objalloc_chunk *first;
      first = ((void*)0);
      q = (struct objalloc_chunk *) o->chunks;
      while (q != p)
 {
   struct objalloc_chunk *next;

   next = q->next;
   if (small != ((void*)0))
     {
       if (small == q)
  small = ((void*)0);
       free (q);
     }
   else if (q->current_ptr > b)
     free (q);
   else if (first == ((void*)0))
     first = q;

   q = next;
 }

      if (first == ((void*)0))
 first = p;
      o->chunks = (PTR) first;


      o->current_ptr = b;
      o->current_space = ((char *) p + CHUNK_SIZE) - b;
    }
  else
    {
      struct objalloc_chunk *q;
      char *current_ptr;







      current_ptr = p->current_ptr;
      p = p->next;

      q = (struct objalloc_chunk *) o->chunks;
      while (q != p)
 {
   struct objalloc_chunk *next;

   next = q->next;
   free (q);
   q = next;
 }

      o->chunks = (PTR) p;

      while (p->current_ptr != ((void*)0))
 p = p->next;

      o->current_ptr = current_ptr;
      o->current_space = ((char *) p + CHUNK_SIZE) - current_ptr;
    }
}
