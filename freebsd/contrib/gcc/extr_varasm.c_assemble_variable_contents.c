
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ASM_DECLARE_OBJECT_NAME (int ,char const*,int ) ;
 int ASM_OUTPUT_LABEL (int ,char const*) ;
 int DECL_ALIGN (int ) ;
 scalar_t__ DECL_INITIAL (int ) ;
 int DECL_SIZE_UNIT (int ) ;
 int asm_out_file ;
 int assemble_zeros (int ) ;
 scalar_t__ error_mark_node ;
 int initializer_zerop (scalar_t__) ;
 int last_assemble_variable_decl ;
 int output_constant (scalar_t__,int ,int ) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static void
assemble_variable_contents (tree decl, const char *name,
       bool dont_output_data)
{






  ASM_OUTPUT_LABEL (asm_out_file, name);


  if (!dont_output_data)
    {
      if (DECL_INITIAL (decl)
   && DECL_INITIAL (decl) != error_mark_node
   && !initializer_zerop (DECL_INITIAL (decl)))

 output_constant (DECL_INITIAL (decl),
    tree_low_cst (DECL_SIZE_UNIT (decl), 1),
    DECL_ALIGN (decl));
      else

 assemble_zeros (tree_low_cst (DECL_SIZE_UNIT (decl), 1));
    }
}
