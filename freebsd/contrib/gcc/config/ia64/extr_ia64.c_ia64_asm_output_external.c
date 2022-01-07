
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* globalize_label ) (int *,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ (* binds_local_p ) (int ) ;} ;
typedef int FILE ;


 int ASM_OUTPUT_TYPE_DIRECTIVE (int *,char const*,char*) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int TARGET_GNU_AS ;
 scalar_t__ TARGET_HPUX_LD ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_SYMBOL_REFERENCED (int ) ;
 scalar_t__ maybe_assemble_visibility (int ) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int *,char const*) ;
 int stub3 (int *,char const*) ;
 TYPE_2__ targetm ;

void
ia64_asm_output_external (FILE *file, tree decl, const char *name)
{



  if (TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
    {


      int need_visibility = ((*targetm.binds_local_p) (decl)
        && maybe_assemble_visibility (decl));



      if ((TARGET_HPUX_LD || !TARGET_GNU_AS)
   && TREE_CODE (decl) == FUNCTION_DECL)
 {
   ASM_OUTPUT_TYPE_DIRECTIVE (file, name, "function");
   (*targetm.asm_out.globalize_label) (file, name);
 }
      else if (need_visibility && !TARGET_GNU_AS)
 (*targetm.asm_out.globalize_label) (file, name);
    }
}
