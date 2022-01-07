
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct partition_elem {int class_element; scalar_t__ class_count; struct partition_elem* next; } ;
typedef TYPE_1__* partition ;
struct TYPE_3__ {struct partition_elem* elements; } ;



int
partition_union (partition part, int elem1, int elem2)
{
  struct partition_elem *elements = part->elements;
  struct partition_elem *e1;
  struct partition_elem *e2;
  struct partition_elem *p;
  struct partition_elem *old_next;

  int class_element = elements[elem1].class_element;


  if (class_element == elements[elem2].class_element)
    return class_element;



  if (elements[elem1].class_count < elements[elem2].class_count)
    {
      int temp = elem1;
      elem1 = elem2;
      elem2 = temp;
      class_element = elements[elem1].class_element;
    }

  e1 = &(elements[elem1]);
  e2 = &(elements[elem2]);


  elements[class_element].class_count
    += elements[e2->class_element].class_count;


  e2->class_element = class_element;
  for (p = e2->next; p != e2; p = p->next)
    p->class_element = class_element;



  old_next = e1->next;
  e1->next = e2->next;
  e2->next = old_next;

  return class_element;
}
