
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_INHERITANCE_CHAIN (scalar_t__) ;
 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 int CLASSTYPE_VBASECLASSES (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int SAME_BINFO_TYPE_P (int ,scalar_t__) ;

tree
binfo_via_virtual (tree binfo, tree limit)
{
  if (limit && !CLASSTYPE_VBASECLASSES (limit))

    return NULL_TREE;

  for (; binfo && !SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), limit);
       binfo = BINFO_INHERITANCE_CHAIN (binfo))
    {
      if (BINFO_VIRTUAL_P (binfo))
 return binfo;
    }
  return NULL_TREE;
}
