
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_PRIMARY_P (scalar_t__) ;
 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ BINFO_VIRTUALS (scalar_t__) ;
 int BINFO_VIRTUAL_P (scalar_t__) ;
 int BV_FN (scalar_t__) ;
 int CLASSTYPE_HAS_PRIMARY_BASE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SAME_BINFO_TYPE_P (int ,scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TYPE_BINFO (int ) ;
 int TYPE_CONTAINS_VPTR_P (int ) ;
 scalar_t__ dfs_skip_bases ;
 int make_new_vtable (scalar_t__,scalar_t__) ;
 int update_vtable_entry_for_fn (scalar_t__,scalar_t__,int ,scalar_t__*,unsigned int) ;

__attribute__((used)) static tree
dfs_modify_vtables (tree binfo, void* data)
{
  tree t = (tree) data;
  tree virtuals;
  tree old_virtuals;
  unsigned ix;

  if (!TYPE_CONTAINS_VPTR_P (BINFO_TYPE (binfo)))


    return dfs_skip_bases;

  if (SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), t)
      && !CLASSTYPE_HAS_PRIMARY_BASE_P (t))

    return NULL_TREE;

  if (BINFO_PRIMARY_P (binfo) && !BINFO_VIRTUAL_P (binfo))




    return NULL_TREE;

  make_new_vtable (t, binfo);




  for (ix = 0, virtuals = BINFO_VIRTUALS (binfo),
  old_virtuals = BINFO_VIRTUALS (TYPE_BINFO (BINFO_TYPE (binfo)));
       virtuals;
       ix++, virtuals = TREE_CHAIN (virtuals),
  old_virtuals = TREE_CHAIN (old_virtuals))
    update_vtable_entry_for_fn (t,
    binfo,
    BV_FN (old_virtuals),
    &virtuals, ix);

  return NULL_TREE;
}
