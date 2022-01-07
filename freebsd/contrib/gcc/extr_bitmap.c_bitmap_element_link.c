
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



__attribute__((used)) static inline void
bitmap_element_link (bitmap head, bitmap_element *element)
{
  unsigned int indx = element->indx;
  bitmap_element *ptr;


  if (head->first == 0)
    {
      element->next = element->prev = 0;
      head->first = element;
    }



  else if (indx < head->indx)
    {
      for (ptr = head->current;
    ptr->prev != 0 && ptr->prev->indx > indx;
    ptr = ptr->prev)
 ;

      if (ptr->prev)
 ptr->prev->next = element;
      else
 head->first = element;

      element->prev = ptr->prev;
      element->next = ptr;
      ptr->prev = element;
    }


  else
    {
      for (ptr = head->current;
    ptr->next != 0 && ptr->next->indx < indx;
    ptr = ptr->next)
 ;

      if (ptr->next)
 ptr->next->prev = element;

      element->next = ptr->next;
      element->prev = ptr;
      ptr->next = element;
    }


  head->current = element;
  head->indx = indx;
}
