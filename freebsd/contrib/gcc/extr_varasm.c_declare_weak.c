
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_WEAK (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ SUPPORTS_WEAK ;
 scalar_t__ TREE_ASM_WRITTEN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_PUBLIC (int ) ;
 int error (char*,int ) ;
 int mark_weak (int ) ;
 int tree_cons (int *,int ,int ) ;
 int warning (int ,char*,int ) ;
 int weak_decls ;

void
declare_weak (tree decl)
{
  if (! TREE_PUBLIC (decl))
    error ("weak declaration of %q+D must be public", decl);
  else if (TREE_CODE (decl) == FUNCTION_DECL && TREE_ASM_WRITTEN (decl))
    error ("weak declaration of %q+D must precede definition", decl);
  else if (SUPPORTS_WEAK)
    {
      if (! DECL_WEAK (decl))
 weak_decls = tree_cons (((void*)0), decl, weak_decls);
    }
  else
    warning (0, "weak declaration of %q+D not supported", decl);

  mark_weak (decl);
}
