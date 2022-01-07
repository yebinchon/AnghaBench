
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int error (char*) ;
 int flag_permissive ;
 int pedwarn (char*,int ,int ) ;
 scalar_t__ processing_template_decl ;
 int unqualified_name_lookup_error (int ) ;

tree
unqualified_fn_lookup_error (tree name)
{
  if (processing_template_decl)
    {
      pedwarn ("there are no arguments to %qD that depend on a template "
        "parameter, so a declaration of %qD must be available",
        name, name);

      if (!flag_permissive)
 {
   static bool hint;
   if (!hint)
     {
       error ("(if you use %<-fpermissive%>, G++ will accept your "
       "code, but allowing the use of an undeclared name is "
       "deprecated)");
       hint = 1;
     }
 }
      return name;
    }

  return unqualified_name_lookup_error (name);
}
