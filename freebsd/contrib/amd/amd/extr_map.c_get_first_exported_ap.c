
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;


 int * get_next_exported_ap (int*) ;

am_node *
get_first_exported_ap(int *index)
{
  *index = -1;
  return get_next_exported_ap(index);
}
