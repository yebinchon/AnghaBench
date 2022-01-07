
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* TYPE_PRIMARY_BASE (struct type*) ;

int
class_index_in_primary_list (struct type *dclass)
{
  struct type *pbc;


  pbc = TYPE_PRIMARY_BASE (dclass);
  if (pbc)
    return 1 + class_index_in_primary_list (pbc);
  else
    return 0;
}
