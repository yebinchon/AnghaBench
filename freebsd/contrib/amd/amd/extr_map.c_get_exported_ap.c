
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;


 int ** exported_ap ;
 int exported_ap_size ;

am_node *
get_exported_ap(int index)
{
  if (index < 0 || index >= exported_ap_size)
    return 0;
  return exported_ap[index];
}
