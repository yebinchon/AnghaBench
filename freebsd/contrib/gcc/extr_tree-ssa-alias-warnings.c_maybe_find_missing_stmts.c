
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int EXPR_HAS_LOCATION (scalar_t__) ;
 scalar_t__ find_alias_site (scalar_t__,int,scalar_t__,int) ;
 scalar_t__ reference_site (scalar_t__,int) ;

__attribute__((used)) static void
maybe_find_missing_stmts (tree object1, bool is_ptr1,
                          tree object2, bool is_ptr2,
                          tree *alias_site,
                          tree *deref_site1,
                          tree *deref_site2)
{
  if (object1 && object2)
    {
      if (!*alias_site || !EXPR_HAS_LOCATION (*alias_site))
 *alias_site = find_alias_site (object1, is_ptr1, object2, is_ptr2);

      if (!*deref_site1 || !EXPR_HAS_LOCATION (*deref_site1))
 *deref_site1 = reference_site (object1, is_ptr1);

      if (!*deref_site2 || !EXPR_HAS_LOCATION (*deref_site2))
 *deref_site2 = reference_site (object2, is_ptr2);
    }



  if (!*alias_site)
    {
      if (*deref_site1)
 *alias_site = *deref_site1;
      else if (*deref_site2)
 *alias_site = *deref_site2;
    }



  if (!*deref_site1 && *alias_site)
    *deref_site1 = *alias_site;
  if (!*deref_site2 && *alias_site)
    *deref_site2 = *alias_site;
}
