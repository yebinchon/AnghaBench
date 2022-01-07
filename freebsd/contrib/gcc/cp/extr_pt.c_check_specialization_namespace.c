
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int current_namespace ;
 int decl_namespace_context (int ) ;
 scalar_t__ is_associated_namespace (int ,int ) ;
 int pedwarn (char*,int ) ;

__attribute__((used)) static bool
check_specialization_namespace (tree tmpl)
{
  tree tpl_ns = decl_namespace_context (tmpl);
  if (is_associated_namespace (current_namespace, tpl_ns))

    return 1;
  else
    {
      pedwarn ("specialization of %qD in different namespace", tmpl);
      pedwarn ("  from definition of %q+#D", tmpl);
      return 0;
    }
}
