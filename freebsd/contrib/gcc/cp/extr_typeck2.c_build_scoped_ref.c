
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 int TREE_TYPE (scalar_t__) ;
 int ba_check ;
 scalar_t__ build_base_path (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 int error_not_base_type (scalar_t__,int ) ;
 scalar_t__ lookup_base (int ,scalar_t__,int ,int *) ;

tree
build_scoped_ref (tree datum, tree basetype, tree* binfo_p)
{
  tree binfo;

  if (datum == error_mark_node)
    return error_mark_node;
  if (*binfo_p)
    binfo = *binfo_p;
  else
    binfo = lookup_base (TREE_TYPE (datum), basetype, ba_check, ((void*)0));

  if (!binfo || binfo == error_mark_node)
    {
      *binfo_p = NULL_TREE;
      if (!binfo)
 error_not_base_type (basetype, TREE_TYPE (datum));
      return error_mark_node;
    }

  *binfo_p = binfo;
  return build_base_path (PLUS_EXPR, datum, binfo, 1);
}
