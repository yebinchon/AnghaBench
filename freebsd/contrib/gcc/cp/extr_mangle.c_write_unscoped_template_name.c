
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MANGLE_TRACE_TREE (char*,int const) ;
 int add_substitution (int const) ;
 scalar_t__ find_substitution (int const) ;
 int write_unscoped_name (int const) ;

__attribute__((used)) static void
write_unscoped_template_name (const tree decl)
{
  MANGLE_TRACE_TREE ("unscoped-template-name", decl);

  if (find_substitution (decl))
    return;
  write_unscoped_name (decl);
  add_substitution (decl);
}
