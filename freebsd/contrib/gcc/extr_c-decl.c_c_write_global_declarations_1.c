
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_NO_WARNING ;


 scalar_t__ C_DECL_USED (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_PUBLIC (scalar_t__) ;
 int check_global_declaration_1 (scalar_t__) ;
 int pedwarn (char*,scalar_t__) ;
 int wrapup_global_declaration_1 (scalar_t__) ;
 int wrapup_global_declaration_2 (scalar_t__) ;

__attribute__((used)) static void
c_write_global_declarations_1 (tree globals)
{
  tree decl;
  bool reconsider;


  for (decl = globals; decl; decl = TREE_CHAIN (decl))
    {



      if (TREE_CODE (decl) == FUNCTION_DECL
   && DECL_INITIAL (decl) == 0
   && DECL_EXTERNAL (decl)
   && !TREE_PUBLIC (decl)
   && C_DECL_USED (decl))
 {
   pedwarn ("%q+F used but never defined", decl);
   TREE_NO_WARNING (decl) = 1;
 }

      wrapup_global_declaration_1 (decl);
    }

  do
    {
      reconsider = 0;
      for (decl = globals; decl; decl = TREE_CHAIN (decl))
 reconsider |= wrapup_global_declaration_2 (decl);
    }
  while (reconsider);

  for (decl = globals; decl; decl = TREE_CHAIN (decl))
    check_global_declaration_1 (decl);
}
