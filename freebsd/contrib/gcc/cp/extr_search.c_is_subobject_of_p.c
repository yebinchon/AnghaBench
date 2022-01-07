
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_INHERITANCE_CHAIN (scalar_t__) ;
 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ binfo_for_vbase (int ,int ) ;

__attribute__((used)) static int
is_subobject_of_p (tree parent, tree binfo)
{
  tree probe;

  for (probe = parent; probe; probe = BINFO_INHERITANCE_CHAIN (probe))
    {
      if (probe == binfo)
 return 1;
      if (BINFO_VIRTUAL_P (probe))
 return (binfo_for_vbase (BINFO_TYPE (probe), BINFO_TYPE (binfo))
  != NULL_TREE);
    }
  return 0;
}
