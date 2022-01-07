
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BINFO_TYPE (scalar_t__) ;
 int IS_AGGR_TYPE_CODE (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (int ) ;
 int complete_type (scalar_t__) ;
 int gcc_assert (int ) ;
 int same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ try_class_unification (scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static tree
get_template_base (tree tparms, tree targs, tree parm, tree arg)
{
  tree rval = NULL_TREE;
  tree binfo;

  gcc_assert (IS_AGGR_TYPE_CODE (TREE_CODE (arg)));

  binfo = TYPE_BINFO (complete_type (arg));
  if (!binfo)

    return NULL_TREE;



  for (binfo = TREE_CHAIN (binfo); binfo; binfo = TREE_CHAIN (binfo))
    {
      tree r = try_class_unification (tparms, targs, parm, BINFO_TYPE (binfo));

      if (r)
 {
   if (rval && !same_type_p (r, rval))
     return NULL_TREE;

   rval = r;
 }
    }

  return rval;
}
