
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

__attribute__((used)) static bool
base_derived_from (tree derived, tree base)
{
  tree probe;

  for (probe = base; probe; probe = BINFO_INHERITANCE_CHAIN (probe))
    {
      if (probe == derived)
 return 1;
      else if (BINFO_VIRTUAL_P (probe))



 return (binfo_for_vbase (BINFO_TYPE (probe), BINFO_TYPE (derived))
  != NULL_TREE);
    }
  return 0;
}
