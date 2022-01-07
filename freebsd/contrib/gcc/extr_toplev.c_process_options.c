
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int expand_function; } ;
struct TYPE_15__ {TYPE_1__ callgraph; int (* post_options ) (scalar_t__*) ;} ;
struct TYPE_14__ {int (* default_short_enums ) () ;int have_named_sections; } ;
struct TYPE_13__ {scalar_t__ var_location; } ;


 int ACCUMULATE_OUTGOING_ARGS ;
 int AUTODETECT_VALUE ;
 scalar_t__ DBX_DEBUG ;
 scalar_t__ DINFO_LEVEL_NONE ;
 scalar_t__ DINFO_LEVEL_NORMAL ;
 scalar_t__ DWARF2_DEBUG ;
 int FRAME_GROWS_DOWNWARD ;
 int HAVE_prefetch ;
 int MAX_LINE ;
 scalar_t__ NO_DEBUG ;
 int OPT_fsection_anchors ;
 int OVERRIDE_OPTIONS ;
 scalar_t__ PREFERRED_DEBUGGING_TYPE ;
 scalar_t__ SDB_DEBUG ;
 char* USER_LABEL_PREFIX ;
 scalar_t__ VMS_AND_DWARF2_DEBUG ;
 scalar_t__ VMS_DEBUG ;
 scalar_t__ XCOFF_DEBUG ;
 int align_functions ;
 void* align_functions_log ;
 int align_jumps ;
 void* align_jumps_log ;
 int align_jumps_max_skip ;
 int align_labels ;
 void* align_labels_log ;
 int align_labels_max_skip ;
 int align_loops ;
 void* align_loops_log ;
 int align_loops_max_skip ;
 char* aux_base_name ;
 scalar_t__ aux_info_file ;
 int aux_info_file_name ;
 TYPE_2__ dbx_debug_hooks ;
 TYPE_2__* debug_hooks ;
 scalar_t__ debug_info_level ;
 int * debug_type_names ;
 TYPE_2__* default_debug_hooks ;
 TYPE_2__ do_nothing_debug_hooks ;
 TYPE_2__ dwarf2_debug_hooks ;
 int error (char*,int ) ;
 int fatal_error (char*,int ) ;
 int flag_asynchronous_unwind_tables ;
 scalar_t__ flag_complex_method ;
 scalar_t__ flag_cx_limited_range ;
 scalar_t__ flag_data_sections ;
 scalar_t__ flag_delayed_branch ;
 scalar_t__ flag_function_sections ;
 scalar_t__ flag_gen_aux_info ;
 int flag_leading_underscore ;
 scalar_t__ flag_non_call_exceptions ;
 scalar_t__ flag_omit_frame_pointer ;
 scalar_t__ flag_peel_loops ;
 scalar_t__ flag_prefetch_loop_arrays ;
 int flag_profile_values ;
 int flag_rename_registers ;
 int flag_rerun_cse_after_loop ;
 scalar_t__ flag_schedule_insns ;
 scalar_t__ flag_schedule_insns_after_reload ;
 scalar_t__ flag_section_anchors ;
 int flag_short_enums ;
 scalar_t__ flag_signaling_nans ;
 scalar_t__ flag_stack_protect ;
 scalar_t__ flag_syntax_only ;
 int flag_trapping_math ;
 scalar_t__ flag_unit_at_a_time ;
 scalar_t__ flag_unroll_all_loops ;
 int flag_unroll_loops ;
 int flag_unwind_tables ;
 scalar_t__ flag_value_profile_transformations ;
 int flag_var_tracking ;
 int flag_web ;
 void* floor_log2 (int) ;
 scalar_t__ fopen (int ,char*) ;
 scalar_t__ input_filename ;
 TYPE_6__ lang_hooks ;
 int lbasename (scalar_t__) ;
 scalar_t__ main_input_filename ;
 int no_backend ;
 int optimize ;
 scalar_t__ optimize_size ;
 int print_switch_values (int ,int ,int ,char*,char*,char*) ;
 int print_version (int ,char*) ;
 scalar_t__ profile_flag ;
 int quiet_flag ;
 TYPE_2__ sdb_debug_hooks ;
 int stderr ;
 int strip_off_ending (char*,int ) ;
 int strlen (char*) ;
 int stub1 (scalar_t__*) ;
 int stub2 () ;
 int target_supports_section_anchors_p () ;
 TYPE_4__ targetm ;
 char* user_label_prefix ;
 scalar_t__ version_flag ;
 TYPE_2__ vmsdbg_debug_hooks ;
 scalar_t__ warn_stack_protect ;
 int warning (int ,char*,...) ;
 scalar_t__ write_symbols ;
 TYPE_2__ xcoff_debug_hooks ;
 char* xstrdup (int ) ;

__attribute__((used)) static void
process_options (void)
{


  debug_hooks = &do_nothing_debug_hooks;





  no_backend = lang_hooks.post_options (&main_input_filename);

  input_filename = main_input_filename;







  if (flag_section_anchors && !target_supports_section_anchors_p ())
    {
      warning (OPT_fsection_anchors,
        "this target does not support %qs", "-fsection-anchors");
      flag_section_anchors = 0;
    }

  if (flag_short_enums == 2)
    flag_short_enums = targetm.default_short_enums ();


  if (aux_base_name)
    ;
  else if (main_input_filename)
    {
      char *name = xstrdup (lbasename (main_input_filename));

      strip_off_ending (name, strlen (name));
      aux_base_name = name;
    }
  else
    aux_base_name = "gccaux";



  if (align_loops <= 0) align_loops = 1;
  if (align_loops_max_skip > align_loops || !align_loops)
    align_loops_max_skip = align_loops - 1;
  align_loops_log = floor_log2 (align_loops * 2 - 1);
  if (align_jumps <= 0) align_jumps = 1;
  if (align_jumps_max_skip > align_jumps || !align_jumps)
    align_jumps_max_skip = align_jumps - 1;
  align_jumps_log = floor_log2 (align_jumps * 2 - 1);
  if (align_labels <= 0) align_labels = 1;
  align_labels_log = floor_log2 (align_labels * 2 - 1);
  if (align_labels_max_skip > align_labels || !align_labels)
    align_labels_max_skip = align_labels - 1;
  if (align_functions <= 0) align_functions = 1;
  align_functions_log = floor_log2 (align_functions * 2 - 1);



  if (flag_unroll_all_loops)
    flag_unroll_loops = 1;




  if (flag_rerun_cse_after_loop == AUTODETECT_VALUE)
    flag_rerun_cse_after_loop = flag_unroll_loops || flag_peel_loops;
  if (flag_web == AUTODETECT_VALUE)
    flag_web = flag_unroll_loops || flag_peel_loops;
  if (flag_rename_registers == AUTODETECT_VALUE)
    flag_rename_registers = flag_unroll_loops || flag_peel_loops;

  if (flag_non_call_exceptions)
    flag_asynchronous_unwind_tables = 1;
  if (flag_asynchronous_unwind_tables)
    flag_unwind_tables = 1;



  if (flag_unit_at_a_time && ! lang_hooks.callgraph.expand_function)
    flag_unit_at_a_time = 0;

  if (!flag_unit_at_a_time)
    flag_section_anchors = 0;

  if (flag_value_profile_transformations)
    flag_profile_values = 1;



  if (flag_schedule_insns || flag_schedule_insns_after_reload)
    warning (0, "instruction scheduling not supported on this target machine");


  if (flag_delayed_branch)
    warning (0, "this target machine does not have delayed branches");


  user_label_prefix = USER_LABEL_PREFIX;
  if (flag_leading_underscore != -1)
    {


      if (user_label_prefix[0] == 0 ||
   (user_label_prefix[0] == '_' && user_label_prefix[1] == 0))
 {
   user_label_prefix = flag_leading_underscore ? "_" : "";
 }
      else
 warning (0, "-f%sleading-underscore not supported on this target machine",
   flag_leading_underscore ? "" : "no-");
    }



  if (version_flag)
    {
      print_version (stderr, "");
      if (! quiet_flag)
 print_switch_values (stderr, 0, MAX_LINE, "", " ", "\n");
    }

  if (flag_syntax_only)
    {
      write_symbols = NO_DEBUG;
      profile_flag = 0;
    }



  if (debug_info_level == DINFO_LEVEL_NONE)
    write_symbols = NO_DEBUG;



  if (PREFERRED_DEBUGGING_TYPE == NO_DEBUG)
    default_debug_hooks = &do_nothing_debug_hooks;
  if (write_symbols == NO_DEBUG)
    ;
  else
    error ("target system does not support the \"%s\" debug format",
    debug_type_names[write_symbols]);




  if (debug_info_level < DINFO_LEVEL_NORMAL
      || debug_hooks->var_location == do_nothing_debug_hooks.var_location)
    {
      if (flag_var_tracking == 1)
        {
   if (debug_info_level < DINFO_LEVEL_NORMAL)
     warning (0, "variable tracking requested, but useless unless "
       "producing debug info");
   else
     warning (0, "variable tracking requested, but not supported "
       "by this debug format");
 }
      flag_var_tracking = 0;
    }

  if (flag_rename_registers == AUTODETECT_VALUE)
    flag_rename_registers = default_debug_hooks->var_location
           != do_nothing_debug_hooks.var_location;

  if (flag_var_tracking == AUTODETECT_VALUE)
    flag_var_tracking = optimize >= 1;




  if (flag_gen_aux_info)
    {
      aux_info_file = fopen (aux_info_file_name, "w");
      if (aux_info_file == 0)
 fatal_error ("can%'t open %s: %m", aux_info_file_name);
    }

  if (! targetm.have_named_sections)
    {
      if (flag_function_sections)
 {
   warning (0, "-ffunction-sections not supported for this target");
   flag_function_sections = 0;
 }
      if (flag_data_sections)
 {
   warning (0, "-fdata-sections not supported for this target");
   flag_data_sections = 0;
 }
    }

  if (flag_function_sections && profile_flag)
    {
      warning (0, "-ffunction-sections disabled; it makes profiling impossible");
      flag_function_sections = 0;
    }


  if (flag_prefetch_loop_arrays)
    {
      warning (0, "-fprefetch-loop-arrays not supported for this target");
      flag_prefetch_loop_arrays = 0;
    }
  if (flag_prefetch_loop_arrays && optimize_size)
    {
      warning (0, "-fprefetch-loop-arrays is not supported with -Os");
      flag_prefetch_loop_arrays = 0;
    }



  if (flag_function_sections && write_symbols != NO_DEBUG)
    warning (0, "-ffunction-sections may affect debugging on some targets");




  if (flag_signaling_nans)
    flag_trapping_math = 1;


  if (flag_cx_limited_range)
    flag_complex_method = 0;



  if (!FRAME_GROWS_DOWNWARD && flag_stack_protect)
    {
      warning (0, "-fstack-protector not supported for this target");
      flag_stack_protect = 0;
    }
  if (!flag_stack_protect)
    warn_stack_protect = 0;





  if (flag_unwind_tables && !ACCUMULATE_OUTGOING_ARGS
      && flag_omit_frame_pointer)
    {
      warning (0, "unwind tables currently requires a frame pointer "
        "for correctness");
      flag_omit_frame_pointer = 0;
    }
}
