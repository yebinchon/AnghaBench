
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_reference_type_for_mode (int ,int ,int) ;
 int ptr_mode ;

tree
build_reference_type (tree to_type)
{
  return build_reference_type_for_mode (to_type, ptr_mode, 0);
}
