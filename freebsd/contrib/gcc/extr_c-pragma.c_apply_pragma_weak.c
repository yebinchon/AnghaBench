
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_ASSEMBLER_NAME (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 int DECL_WEAK (scalar_t__) ;
 int IDENTIFIER_LENGTH (scalar_t__) ;
 int IDENTIFIER_POINTER (scalar_t__) ;
 int OPT_Wpragmas ;
 scalar_t__ SUPPORTS_WEAK ;
 scalar_t__ TREE_SYMBOL_REFERENCED (int ) ;
 scalar_t__ TREE_USED (scalar_t__) ;
 scalar_t__ build_string (int ,int ) ;
 scalar_t__ build_tree_list (int *,scalar_t__) ;
 int decl_attributes (scalar_t__*,scalar_t__,int ) ;
 int declare_weak (scalar_t__) ;
 int * get_identifier (char*) ;
 int warning (int ,char*,scalar_t__) ;

__attribute__((used)) static void
apply_pragma_weak (tree decl, tree value)
{
  if (value)
    {
      value = build_string (IDENTIFIER_LENGTH (value),
       IDENTIFIER_POINTER (value));
      decl_attributes (&decl, build_tree_list (get_identifier ("alias"),
            build_tree_list (((void*)0), value)),
         0);
    }

  if (SUPPORTS_WEAK && DECL_EXTERNAL (decl) && TREE_USED (decl)
      && !DECL_WEAK (decl)
      && TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
    warning (OPT_Wpragmas, "applying #pragma weak %q+D after first use "
      "results in unspecified behavior", decl);

  declare_weak (decl);
}
