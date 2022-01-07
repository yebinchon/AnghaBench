
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int indx; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_6__ {unsigned int indx; TYPE_1__* current; TYPE_1__* first; } ;


 unsigned int BITMAP_ELEMENT_ALL_BITS ;

__attribute__((used)) static inline bitmap_element *
bitmap_find_bit (bitmap head, unsigned int bit)
{
  bitmap_element *element;
  unsigned int indx = bit / BITMAP_ELEMENT_ALL_BITS;

  if (head->current == 0
      || head->indx == indx)
    return head->current;

  if (head->indx < indx)


    for (element = head->current;
  element->next != 0 && element->indx < indx;
  element = element->next)
      ;

  else if (head->indx / 2 < indx)


    for (element = head->current;
  element->prev != 0 && element->indx > indx;
  element = element->prev)
      ;

  else


    for (element = head->first;
  element->next != 0 && element->indx < indx;
  element = element->next)
      ;



  head->current = element;
  head->indx = element->indx;
  if (element != 0 && element->indx != indx)
    element = 0;

  return element;
}
