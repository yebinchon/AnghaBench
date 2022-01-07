
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MANGLE_TRACE_TREE (char*,int const) ;
 int add_substitution (int const) ;
 scalar_t__ find_substitution (int const) ;
 int write_name (int const,int ) ;

__attribute__((used)) static void
write_template_template_arg (const tree decl)
{
  MANGLE_TRACE_TREE ("template-template-arg", decl);

  if (find_substitution (decl))
    return;
  write_name (decl, 0);
  add_substitution (decl);
}
