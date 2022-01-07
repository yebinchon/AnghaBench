
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_TYPE (int ) ;
 int CLASSTYPE_PRIMARY_BINFO (int ) ;
 int NULL_TREE ;
 int copied_binfo (int ,int ) ;

__attribute__((used)) static tree
get_primary_binfo (tree binfo)
{
  tree primary_base;

  primary_base = CLASSTYPE_PRIMARY_BINFO (BINFO_TYPE (binfo));
  if (!primary_base)
    return NULL_TREE;

  return copied_binfo (primary_base, binfo);
}
