
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* init_options ) (unsigned int,char const**) ;int (* initialize_diagnostics ) (int ) ;} ;
struct TYPE_3__ {scalar_t__ unwind_tables_default; int have_named_sections; int default_target_flags; } ;


 int DEFAULT_SIGNED_CHAR ;
 int OPTIMIZATION_OPTIONS (int,int) ;
 int OPT_Wuninitialized ;
 int align_functions ;
 int align_jumps ;
 int align_labels ;
 int align_loops ;
 int flag_caller_saves ;
 int flag_cprop_registers ;
 int flag_crossjumping ;
 int flag_cse_follow_jumps ;
 int flag_cse_skip_blocks ;
 int flag_defer_pop ;
 int flag_delayed_branch ;
 int flag_delete_null_pointer_checks ;
 scalar_t__ flag_exceptions ;
 int flag_expensive_optimizations ;
 int flag_gcse ;
 int flag_gcse_after_reload ;
 int flag_guess_branch_prob ;
 int flag_if_conversion ;
 int flag_if_conversion2 ;
 int flag_inline_functions ;
 int flag_ipa_pure_const ;
 int flag_ipa_reference ;
 int flag_ipa_type_escape ;
 scalar_t__ flag_merge_constants ;
 int flag_no_inline ;
 int flag_omit_frame_pointer ;
 int flag_optimize_sibling_calls ;
 int flag_peephole2 ;
 scalar_t__ flag_pic ;
 scalar_t__ flag_pie ;
 int flag_really_no_inline ;
 int flag_regmove ;
 int flag_reorder_blocks ;
 scalar_t__ flag_reorder_blocks_and_partition ;
 int flag_reorder_functions ;
 int flag_rerun_cse_after_loop ;
 int flag_schedule_insns ;
 int flag_schedule_insns_after_reload ;
 int flag_shlib ;
 int flag_short_enums ;
 int flag_signed_char ;
 int flag_strict_aliasing ;
 int flag_strict_overflow ;
 int flag_thread_jumps ;
 int flag_tree_ccp ;
 int flag_tree_ch ;
 int flag_tree_copy_prop ;
 int flag_tree_copyrename ;
 int flag_tree_dce ;
 int flag_tree_dom ;
 int flag_tree_dse ;
 int flag_tree_fre ;
 int flag_tree_live_range_split ;
 int flag_tree_pre ;
 int flag_tree_salias ;
 int flag_tree_sink ;
 int flag_tree_sra ;
 int flag_tree_store_ccp ;
 int flag_tree_store_copy_prop ;
 int flag_tree_ter ;
 int flag_unit_at_a_time ;
 int flag_unswitch_loops ;
 scalar_t__ flag_unwind_tables ;
 int global_dc ;
 int handle_options (unsigned int,char const**,unsigned int) ;
 int inform (char*) ;
 TYPE_2__ lang_hooks ;
 int no_unit_at_a_time_default ;
 int optimize ;
 int optimize_size ;
 int read_integral_parameter (char const*,char const*,int) ;
 int set_param_value (char*,int) ;
 int strcmp (char const*,char*) ;
 unsigned int stub1 (unsigned int,char const**) ;
 int stub2 (int ) ;
 int target_flags ;
 TYPE_1__ targetm ;
 scalar_t__ warn_inline ;
 int warn_uninitialized ;
 int warning (int ,char*) ;

void
decode_options (unsigned int argc, const char **argv)
{
  unsigned int i, lang_mask;


  lang_mask = lang_hooks.init_options (argc, argv);

  lang_hooks.initialize_diagnostics (global_dc);



  for (i = 1; i < argc; i++)
    {
      if (!strcmp (argv[i], "-O"))
 {
   optimize = 1;
   optimize_size = 0;
 }
      else if (argv[i][0] == '-' && argv[i][1] == 'O')
 {

   const char *p = &argv[i][2];

   if ((p[0] == 's') && (p[1] == 0))
     {
       optimize_size = 1;


       optimize = 2;
     }
   else
     {
       const int optimize_val = read_integral_parameter (p, p - 2, -1);
       if (optimize_val != -1)
  {
    optimize = optimize_val;
    optimize_size = 0;
  }
     }
 }
    }

  if (!optimize)
    {
      flag_merge_constants = 0;
    }

  if (optimize >= 1)
    {
      flag_defer_pop = 1;






      flag_guess_branch_prob = 1;
      flag_cprop_registers = 1;
      flag_if_conversion = 1;
      flag_if_conversion2 = 1;
      flag_ipa_pure_const = 1;
      flag_ipa_reference = 1;
      flag_tree_ccp = 1;
      flag_tree_dce = 1;
      flag_tree_dom = 1;
      flag_tree_dse = 1;
      flag_tree_ter = 1;
      flag_tree_live_range_split = 1;
      flag_tree_sra = 1;
      flag_tree_copyrename = 1;
      flag_tree_fre = 1;
      flag_tree_copy_prop = 1;
      flag_tree_sink = 1;
      flag_tree_salias = 1;
      if (!no_unit_at_a_time_default)
        flag_unit_at_a_time = 1;

      if (!optimize_size)
 {




   flag_tree_ch = 1;
 }
    }

  if (optimize >= 2)
    {
      flag_thread_jumps = 1;
      flag_crossjumping = 1;
      flag_optimize_sibling_calls = 1;
      flag_cse_follow_jumps = 1;
      flag_cse_skip_blocks = 1;
      flag_gcse = 1;
      flag_expensive_optimizations = 1;
      flag_ipa_type_escape = 1;
      flag_rerun_cse_after_loop = 1;
      flag_caller_saves = 1;
      flag_peephole2 = 1;




      flag_regmove = 1;
      flag_strict_aliasing = 1;
      flag_strict_overflow = 1;
      flag_delete_null_pointer_checks = 1;
      flag_reorder_blocks = 1;
      flag_reorder_functions = 1;
      flag_tree_store_ccp = 1;
      flag_tree_store_copy_prop = 1;





      if (!optimize_size)
 {

          flag_tree_pre = 1;
 }
    }

  if (optimize >= 3)
    {
      flag_inline_functions = 1;
      flag_unswitch_loops = 1;
      flag_gcse_after_reload = 1;
    }

  if (optimize_size)
    {
      align_loops = 1;
      align_jumps = 1;
      align_labels = 1;
      align_functions = 1;
      flag_reorder_blocks = 0;
      flag_reorder_blocks_and_partition = 0;
    }

  if (optimize_size)
    {

      set_param_value ("max-inline-insns-single", 5);
      set_param_value ("max-inline-insns-auto", 5);
      flag_inline_functions = 1;


      set_param_value ("min-crossjump-insns", 1);
    }


  flag_signed_char = DEFAULT_SIGNED_CHAR;


  flag_short_enums = 2;



  target_flags = targetm.default_target_flags;


  flag_unwind_tables = targetm.unwind_tables_default;






  handle_options (argc, argv, lang_mask);

  if (flag_pie)
    flag_pic = flag_pie;
  if (flag_pic && !flag_pie)
    flag_shlib = 1;

  if (flag_no_inline == 2)
    flag_no_inline = 0;
  else
    flag_really_no_inline = flag_no_inline;






  if (optimize == 0)
    {


      flag_no_inline = 1;
      warn_inline = 0;




      if (warn_uninitialized == 1)
 warning (OPT_Wuninitialized,
   "-Wuninitialized is not supported without -O");
    }

  if (flag_really_no_inline == 2)
    flag_really_no_inline = flag_no_inline;







  if (flag_exceptions && flag_reorder_blocks_and_partition)
    {
      inform
     ("-freorder-blocks-and-partition does not work with exceptions");
      flag_reorder_blocks_and_partition = 0;
      flag_reorder_blocks = 1;
    }




  if (flag_unwind_tables && ! targetm.unwind_tables_default
      && flag_reorder_blocks_and_partition)
    {
      inform ("-freorder-blocks-and-partition does not support unwind info");
      flag_reorder_blocks_and_partition = 0;
      flag_reorder_blocks = 1;
    }





  if (flag_reorder_blocks_and_partition
      && (!targetm.have_named_sections
   || (flag_unwind_tables && targetm.unwind_tables_default)))
    {
      inform
       ("-freorder-blocks-and-partition does not work on this architecture");
      flag_reorder_blocks_and_partition = 0;
      flag_reorder_blocks = 1;
    }
}
