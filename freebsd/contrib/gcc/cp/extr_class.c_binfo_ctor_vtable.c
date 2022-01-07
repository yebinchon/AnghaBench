
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_VTABLE (int ) ;
 scalar_t__ TREE_BINFO ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_LIST ;
 int TREE_VALUE (int ) ;

__attribute__((used)) static tree
binfo_ctor_vtable (tree binfo)
{
  tree vt;

  while (1)
    {
      vt = BINFO_VTABLE (binfo);
      if (TREE_CODE (vt) == TREE_LIST)
 vt = TREE_VALUE (vt);
      if (TREE_CODE (vt) == TREE_BINFO)
 binfo = vt;
      else
 break;
    }

  return vt;
}
