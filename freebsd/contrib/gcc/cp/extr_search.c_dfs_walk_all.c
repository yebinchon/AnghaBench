
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ BINFO_BASE_ITERATE (int ,unsigned int,int ) ;
 int NULL_TREE ;
 int dfs_skip_bases ;
 int gcc_assert (int) ;

tree
dfs_walk_all (tree binfo, tree (*pre_fn) (tree, void *),
       tree (*post_fn) (tree, void *), void *data)
{
  tree rval;
  unsigned ix;
  tree base_binfo;


  if (pre_fn)
    {
      rval = pre_fn (binfo, data);
      if (rval)
 {
   if (rval == dfs_skip_bases)
     goto skip_bases;
   return rval;
 }
    }


  for (ix = 0; BINFO_BASE_ITERATE (binfo, ix, base_binfo); ix++)
    {
      rval = dfs_walk_all (base_binfo, pre_fn, post_fn, data);
      if (rval)
 return rval;
    }

 skip_bases:

  if (post_fn)
    {
      rval = post_fn (binfo, data);
      gcc_assert (rval != dfs_skip_bases);
      return rval;
    }

  return NULL_TREE;
}
