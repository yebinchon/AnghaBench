
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int PLUS_EXPR ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTR_P (scalar_t__) ;
 int ba_check ;
 int ba_unique ;
 scalar_t__ build_base_path (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_base (scalar_t__,scalar_t__,int ,int *) ;

tree
convert_to_base (tree object, tree type, bool check_access, bool nonnull)
{
  tree binfo;
  tree object_type;

  if (TYPE_PTR_P (TREE_TYPE (object)))
    {
      object_type = TREE_TYPE (TREE_TYPE (object));
      type = TREE_TYPE (type);
    }
  else
    object_type = TREE_TYPE (object);

  binfo = lookup_base (object_type, type,
         check_access ? ba_check : ba_unique,
         ((void*)0));
  if (!binfo || binfo == error_mark_node)
    return error_mark_node;

  return build_base_path (PLUS_EXPR, object, binfo, nonnull);
}
