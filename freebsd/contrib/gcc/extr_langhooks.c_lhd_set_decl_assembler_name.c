
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ASM_FORMAT_PRIVATE_NAME (char*,char const*,int ) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 int DECL_NAME (int ) ;
 int DECL_UID (int ) ;
 scalar_t__ FUNCTION_DECL ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ NULL_TREE ;
 int SET_DECL_ASSEMBLER_NAME (int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;
 int gcc_assert (int) ;
 int get_identifier (char*) ;

void
lhd_set_decl_assembler_name (tree decl)
{




  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL
       || (TREE_CODE (decl) == VAR_DECL
    && (TREE_STATIC (decl)
        || DECL_EXTERNAL (decl)
        || TREE_PUBLIC (decl))));
  if (TREE_PUBLIC (decl) || DECL_CONTEXT (decl) == NULL_TREE)
    SET_DECL_ASSEMBLER_NAME (decl, DECL_NAME (decl));
  else
    {
      const char *name = IDENTIFIER_POINTER (DECL_NAME (decl));
      char *label;

      ASM_FORMAT_PRIVATE_NAME (label, name, DECL_UID (decl));
      SET_DECL_ASSEMBLER_NAME (decl, get_identifier (label));
    }
}
