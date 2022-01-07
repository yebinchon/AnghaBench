
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indx; unsigned int* bits; scalar_t__ prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_5__ {int indx; TYPE_1__* first; scalar_t__ current; } ;
typedef int FILE ;


 unsigned int BITMAP_ELEMENT_ALL_BITS ;
 unsigned int BITMAP_ELEMENT_WORDS ;
 unsigned int BITMAP_WORD_BITS ;
 int fprintf (int *,char*,...) ;

void
debug_bitmap_file (FILE *file, bitmap head)
{
  bitmap_element *ptr;

  fprintf (file, "\nfirst = %p current = %p indx = %u\n",
    (void *) head->first, (void *) head->current, head->indx);

  for (ptr = head->first; ptr; ptr = ptr->next)
    {
      unsigned int i, j, col = 26;

      fprintf (file, "\t%p next = %p prev = %p indx = %u\n\t\tbits = {",
        (void*) ptr, (void*) ptr->next, (void*) ptr->prev, ptr->indx);

      for (i = 0; i < BITMAP_ELEMENT_WORDS; i++)
 for (j = 0; j < BITMAP_WORD_BITS; j++)
   if ((ptr->bits[i] >> j) & 1)
     {
       if (col > 70)
  {
    fprintf (file, "\n\t\t\t");
    col = 24;
  }

       fprintf (file, " %u", (ptr->indx * BITMAP_ELEMENT_ALL_BITS
         + i * BITMAP_WORD_BITS + j));
       col += 4;
     }

      fprintf (file, " }\n");
    }
}
