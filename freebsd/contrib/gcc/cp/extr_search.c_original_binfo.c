
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * BINFO_BASE_BINFO (int *,int) ;
 int * BINFO_INHERITANCE_CHAIN (int *) ;
 int BINFO_TYPE (int *) ;
 scalar_t__ BINFO_VIRTUAL_P (int *) ;
 scalar_t__ CLASSTYPE_VBASECLASSES (int ) ;
 int * NULL_TREE ;
 scalar_t__ SAME_BINFO_TYPE_P (int ,int ) ;
 int * binfo_for_vbase (int ,int ) ;

tree
original_binfo (tree binfo, tree here)
{
  tree result = ((void*)0);

  if (SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), BINFO_TYPE (here)))
    result = here;
  else if (BINFO_VIRTUAL_P (binfo))
    result = (CLASSTYPE_VBASECLASSES (BINFO_TYPE (here))
       ? binfo_for_vbase (BINFO_TYPE (binfo), BINFO_TYPE (here))
       : NULL_TREE);
  else if (BINFO_INHERITANCE_CHAIN (binfo))
    {
      tree base_binfos;

      base_binfos = original_binfo (BINFO_INHERITANCE_CHAIN (binfo), here);
      if (base_binfos)
 {
   int ix;
   tree base_binfo;

   for (ix = 0; (base_binfo = BINFO_BASE_BINFO (base_binfos, ix)); ix++)
     if (SAME_BINFO_TYPE_P (BINFO_TYPE (base_binfo),
       BINFO_TYPE (binfo)))
       {
  result = base_binfo;
  break;
       }
 }
    }

  return result;
}
