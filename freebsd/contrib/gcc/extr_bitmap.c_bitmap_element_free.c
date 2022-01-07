
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ indx; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_8__ {scalar_t__ indx; TYPE_1__* current; TYPE_1__* first; } ;


 int bitmap_elem_to_freelist (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static inline void
bitmap_element_free (bitmap head, bitmap_element *elt)
{
  bitmap_element *next = elt->next;
  bitmap_element *prev = elt->prev;

  if (prev)
    prev->next = next;

  if (next)
    next->prev = prev;

  if (head->first == elt)
    head->first = next;



  if (head->current == elt)
    {
      head->current = next != 0 ? next : prev;
      if (head->current)
 head->indx = head->current->indx;
      else
 head->indx = 0;
    }
  bitmap_elem_to_freelist (head, elt);
}
