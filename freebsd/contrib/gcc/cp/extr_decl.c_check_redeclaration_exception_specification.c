
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_IN_SYSTEM_HEADER (int ) ;
 int DECL_IS_BUILTIN (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_RAISES_EXCEPTIONS (int ) ;
 int comp_except_specs (int ,int ,int) ;
 int error (char*,int ) ;
 scalar_t__ flag_exceptions ;
 scalar_t__ pedantic ;

__attribute__((used)) static void
check_redeclaration_exception_specification (tree new_decl,
          tree old_decl)
{
  tree new_type;
  tree old_type;
  tree new_exceptions;
  tree old_exceptions;

  new_type = TREE_TYPE (new_decl);
  new_exceptions = TYPE_RAISES_EXCEPTIONS (new_type);
  old_type = TREE_TYPE (old_decl);
  old_exceptions = TYPE_RAISES_EXCEPTIONS (old_type);







  if ((pedantic || ! DECL_IN_SYSTEM_HEADER (old_decl))
      && ! DECL_IS_BUILTIN (old_decl)
      && flag_exceptions
      && !comp_except_specs (new_exceptions, old_exceptions,
                  1))
    {
      error ("declaration of %qF throws different exceptions", new_decl);
      error ("from previous declaration %q+F", old_decl);
    }
}
