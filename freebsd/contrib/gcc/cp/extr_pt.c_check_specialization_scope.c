
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ current_scope () ;
 scalar_t__ current_template_parms ;
 int error (char*,...) ;

__attribute__((used)) static bool
check_specialization_scope (void)
{
  tree scope = current_scope ();
  if (scope && TREE_CODE (scope) != NAMESPACE_DECL)
    {
      error ("explicit specialization in non-namespace scope %qD", scope);
      return 0;
    }
  if (current_template_parms)
    {
      error ("enclosing class templates are not explicitly specialized");
      return 0;
    }

  return 1;
}
