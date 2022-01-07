
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ access_kind ;


 scalar_t__ BINFO_INHERITANCE_CHAIN (scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_P (scalar_t__) ;
 int DERIVED_FROM_P (scalar_t__,scalar_t__) ;
 scalar_t__ access_in_type (scalar_t__,scalar_t__) ;
 scalar_t__ ak_none ;
 scalar_t__ context_for_name_lookup (scalar_t__) ;

__attribute__((used)) static int
protected_accessible_p (tree decl, tree derived, tree binfo)
{
  access_kind access;
  if (!DERIVED_FROM_P (context_for_name_lookup (decl), derived))
    return 0;

  access = access_in_type (derived, decl);


  if (access == ak_none)
    return 0;
  if (DECL_NONSTATIC_MEMBER_P (decl))
    {


      tree t = binfo;
      while (BINFO_INHERITANCE_CHAIN (t))
 t = BINFO_INHERITANCE_CHAIN (t);

      if (!DERIVED_FROM_P (derived, BINFO_TYPE (t)))
 return 0;
    }

  return 1;
}
