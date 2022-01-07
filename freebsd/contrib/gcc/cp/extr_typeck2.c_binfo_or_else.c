
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int ba_unique ;
 scalar_t__ error_mark_node ;
 int error_not_base_type (scalar_t__,scalar_t__) ;
 scalar_t__ lookup_base (scalar_t__,scalar_t__,int ,int *) ;

tree
binfo_or_else (tree base, tree type)
{
  tree binfo = lookup_base (type, base, ba_unique, ((void*)0));

  if (binfo == error_mark_node)
    return NULL_TREE;
  else if (!binfo)
    error_not_base_type (base, type);
  return binfo;
}
