
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct partition_elem {int dummy; } ;
struct partition_def {int dummy; } ;
typedef TYPE_2__* partition ;
struct TYPE_5__ {int num_elements; TYPE_1__* elements; } ;
struct TYPE_4__ {int class_element; int class_count; struct TYPE_4__* next; } ;


 int xmalloc (int) ;

partition
partition_new (int num_elements)
{
  int e;

  partition part = (partition)
    xmalloc (sizeof (struct partition_def) +
      (num_elements - 1) * sizeof (struct partition_elem));
  part->num_elements = num_elements;
  for (e = 0; e < num_elements; ++e)
    {
      part->elements[e].class_element = e;
      part->elements[e].next = &(part->elements[e]);
      part->elements[e].class_count = 1;
    }

  return part;
}
