
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 int build_int_cst_wide (int ,scalar_t__,int) ;

tree
build_int_cst (tree type, HOST_WIDE_INT low)
{
  return build_int_cst_wide (type, low, low < 0 ? -1 : 0);
}
