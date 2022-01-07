
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; int indx; int bits; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_9__ {int indx; TYPE_1__* current; TYPE_1__* first; } ;


 int bitmap_clear (TYPE_2__*) ;
 TYPE_1__* bitmap_element_allocate (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;

void
bitmap_copy (bitmap to, bitmap from)
{
  bitmap_element *from_ptr, *to_ptr = 0;

  bitmap_clear (to);


  for (from_ptr = from->first; from_ptr; from_ptr = from_ptr->next)
    {
      bitmap_element *to_elt = bitmap_element_allocate (to);

      to_elt->indx = from_ptr->indx;
      memcpy (to_elt->bits, from_ptr->bits, sizeof (to_elt->bits));



      if (to_ptr == 0)
 {
   to->first = to->current = to_elt;
   to->indx = from_ptr->indx;
   to_elt->next = to_elt->prev = 0;
 }
      else
 {
   to_elt->prev = to_ptr;
   to_elt->next = 0;
   to_ptr->next = to_elt;
 }

      to_ptr = to_elt;
    }
}
