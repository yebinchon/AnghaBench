
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_10__ {int next_bb; } ;
struct TYPE_9__ {char const* hot_section_label; char const* cold_section_label; scalar_t__ function_frequency; int * unlikely_text_section_name; int * cold_section_end_label; int * hot_section_end_label; } ;
struct TYPE_8__ {int (* begin_function ) (int ) ;} ;
struct TYPE_6__ {int (* mark_decl_preserved ) (char const*) ;} ;
struct TYPE_7__ {TYPE_1__ asm_out; } ;


 int ASM_DECLARE_FUNCTION_NAME (int ,char const*,int ) ;
 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int ASM_OUTPUT_ALIGN (int ,int) ;
 int ASM_OUTPUT_FUNCTION_PREFIX (int ,char const*) ;
 int ASM_OUTPUT_LABEL (int ,char const*) ;
 int ASM_OUTPUT_MAX_SKIP_ALIGN (int ,int,scalar_t__) ;
 scalar_t__ BB_COLD_PARTITION ;
 scalar_t__ BB_PARTITION (int ) ;
 int BITS_PER_UNIT ;
 scalar_t__ CONSTANT_POOL_BEFORE_FUNCTION ;
 int DECL_ALIGN (int ) ;
 scalar_t__ DECL_PRESERVE_P (int ) ;
 scalar_t__ DECL_SECTION_NAME (int ) ;
 int DECL_USER_ALIGN (int ) ;
 TYPE_5__* ENTRY_BLOCK_PTR ;
 scalar_t__ FUNCTION_FREQUENCY_UNLIKELY_EXECUTED ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 scalar_t__ align_functions ;
 int align_functions_log ;
 int app_disable () ;
 int asm_out_file ;
 int assemble_align (int) ;
 TYPE_4__* cfun ;
 int const_labelno ;
 int current_function_decl ;
 int current_function_is_thunk ;
 TYPE_3__* debug_hooks ;
 int first_function_block_is_cold ;
 int flag_function_sections ;
 scalar_t__ flag_reorder_blocks_and_partition ;
 int floor_log2 (int) ;
 int function_section (int ) ;
 void* ggc_strdup (char*) ;
 int globalize_decl (int ) ;
 int in_cold_section_p ;
 int initialize_cold_section_name () ;
 int maybe_assemble_visibility (int ) ;
 int notice_global_symbol (int ) ;
 int output_constant_pool (char const*,int ) ;
 int resolve_unique_section (int ,int ,int ) ;
 scalar_t__ strcmp (int ,int *) ;
 int stub1 (int ) ;
 int stub2 (char const*) ;
 int switch_to_section (int ) ;
 TYPE_2__ targetm ;
 int text_section ;
 int unlikely_text_section () ;

void
assemble_start_function (tree decl, const char *fnname)
{
  int align;
  char tmp_label[100];
  bool hot_label_written = 0;

  cfun->unlikely_text_section_name = ((void*)0);

  first_function_block_is_cold = 0;
  if (flag_reorder_blocks_and_partition)
    {
      ASM_GENERATE_INTERNAL_LABEL (tmp_label, "LHOTB", const_labelno);
      cfun->hot_section_label = ggc_strdup (tmp_label);
      ASM_GENERATE_INTERNAL_LABEL (tmp_label, "LCOLDB", const_labelno);
      cfun->cold_section_label = ggc_strdup (tmp_label);
      ASM_GENERATE_INTERNAL_LABEL (tmp_label, "LHOTE", const_labelno);
      cfun->hot_section_end_label = ggc_strdup (tmp_label);
      ASM_GENERATE_INTERNAL_LABEL (tmp_label, "LCOLDE", const_labelno);
      cfun->cold_section_end_label = ggc_strdup (tmp_label);
      const_labelno++;
    }
  else
    {
      cfun->hot_section_label = ((void*)0);
      cfun->cold_section_label = ((void*)0);
      cfun->hot_section_end_label = ((void*)0);
      cfun->cold_section_end_label = ((void*)0);
    }



  app_disable ();

  if (CONSTANT_POOL_BEFORE_FUNCTION)
    output_constant_pool (fnname, decl);

  resolve_unique_section (decl, 0, flag_function_sections);






  if (flag_reorder_blocks_and_partition)
    {
      switch_to_section (unlikely_text_section ());
      assemble_align (DECL_ALIGN (decl));
      ASM_OUTPUT_LABEL (asm_out_file, cfun->cold_section_label);




      if (!current_function_is_thunk
   && BB_PARTITION (ENTRY_BLOCK_PTR->next_bb) == BB_COLD_PARTITION)
 {
   switch_to_section (text_section);
   assemble_align (DECL_ALIGN (decl));
   ASM_OUTPUT_LABEL (asm_out_file, cfun->hot_section_label);
   hot_label_written = 1;
   first_function_block_is_cold = 1;
 }
    }
  else if (DECL_SECTION_NAME (decl))
    {





      initialize_cold_section_name ();

      if (cfun->unlikely_text_section_name
   && strcmp (TREE_STRING_POINTER (DECL_SECTION_NAME (decl)),
       cfun->unlikely_text_section_name) == 0)
 first_function_block_is_cold = 1;
    }

  in_cold_section_p = first_function_block_is_cold;



  switch_to_section (function_section (decl));
  if (flag_reorder_blocks_and_partition
      && !hot_label_written)
    ASM_OUTPUT_LABEL (asm_out_file, cfun->hot_section_label);


  align = floor_log2 (DECL_ALIGN (decl) / BITS_PER_UNIT);
  if (align > 0)
    {
      ASM_OUTPUT_ALIGN (asm_out_file, align);
    }




  if (! DECL_USER_ALIGN (decl)
      && align_functions_log > align
      && cfun->function_frequency != FUNCTION_FREQUENCY_UNLIKELY_EXECUTED)
    {




      ASM_OUTPUT_ALIGN (asm_out_file, align_functions_log);

    }





  (*debug_hooks->begin_function) (decl);



  if (TREE_PUBLIC (decl))
    {
      notice_global_symbol (decl);

      globalize_decl (decl);

      maybe_assemble_visibility (decl);
    }

  if (DECL_PRESERVE_P (decl))
    targetm.asm_out.mark_decl_preserved (fnname);






  ASM_OUTPUT_LABEL (asm_out_file, fnname);

}
