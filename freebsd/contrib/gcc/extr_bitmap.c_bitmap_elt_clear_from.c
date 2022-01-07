
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* elements; } ;
typedef TYPE_1__ bitmap_obstack ;
struct TYPE_8__ {scalar_t__ indx; struct TYPE_8__* prev; int * next; } ;
typedef TYPE_2__ bitmap_element ;
typedef TYPE_3__* bitmap ;
struct TYPE_9__ {scalar_t__ indx; TYPE_2__* current; int * first; TYPE_1__* obstack; } ;


 TYPE_2__* bitmap_ggc_free ;

void
bitmap_elt_clear_from (bitmap head, bitmap_element *elt)
{
  bitmap_element *prev;
  bitmap_obstack *bit_obstack = head->obstack;

  if (!elt) return;

  prev = elt->prev;
  if (prev)
    {
      prev->next = ((void*)0);
      if (head->current->indx > prev->indx)
 {
   head->current = prev;
   head->indx = prev->indx;
 }
    }
  else
    {
      head->first = ((void*)0);
      head->current = ((void*)0);
      head->indx = 0;
    }


  if (bit_obstack)
    {
      elt->prev = bit_obstack->elements;
      bit_obstack->elements = elt;
    }
  else
    {
      elt->prev = bitmap_ggc_free;
      bitmap_ggc_free = elt;
    }
}
