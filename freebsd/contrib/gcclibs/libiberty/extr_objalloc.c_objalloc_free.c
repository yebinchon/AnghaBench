
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc_chunk {struct objalloc_chunk* next; scalar_t__ chunks; } ;
struct objalloc {struct objalloc* next; scalar_t__ chunks; } ;


 int free (struct objalloc_chunk*) ;

void
objalloc_free (struct objalloc *o)
{
  struct objalloc_chunk *l;

  l = (struct objalloc_chunk *) o->chunks;
  while (l != ((void*)0))
    {
      struct objalloc_chunk *next;

      next = l->next;
      free (l);
      l = next;
    }

  free (o);
}
