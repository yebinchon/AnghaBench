
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inlined_to; } ;
struct cgraph_node {int decl; TYPE_1__ global; scalar_t__ analyzed; struct cgraph_node* next; } ;


 scalar_t__ DECL_SAVED_TREE (int ) ;
 int TV_CGRAPHOPT ;
 scalar_t__ cgraph_dump_file ;
 int cgraph_expand_all_functions () ;
 int cgraph_function_and_variable_visibility () ;
 int cgraph_global_info_ready ;
 int cgraph_increase_alignment () ;
 int cgraph_mark_functions_to_output () ;
 struct cgraph_node* cgraph_nodes ;
 int cgraph_output_in_order () ;
 int cgraph_output_pending_asms () ;
 int cgraph_remove_unreachable_nodes (int,int ) ;
 int cgraph_varpool_analyze_pending_decls () ;
 int cgraph_varpool_assemble_pending_decls () ;
 int cgraph_varpool_output_debug_info () ;
 int cgraph_varpool_remove_unreferenced_decls () ;
 int dump_cgraph (scalar_t__) ;
 int dump_cgraph_node (scalar_t__,struct cgraph_node*) ;
 int dump_file ;
 int dump_varpool (scalar_t__) ;
 scalar_t__ errorcount ;
 int flag_toplevel_reorder ;
 scalar_t__ flag_unit_at_a_time ;
 int fprintf (scalar_t__,char*) ;
 int internal_error (char*) ;
 int ipa_passes () ;
 int quiet_flag ;
 scalar_t__ sorrycount ;
 scalar_t__ stderr ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int verify_cgraph () ;

void
cgraph_optimize (void)
{
  if (errorcount || sorrycount)
    return;




  if (!flag_unit_at_a_time)
    {
      cgraph_output_pending_asms ();
      cgraph_varpool_assemble_pending_decls ();
      cgraph_varpool_output_debug_info ();
      return;
    }



  cgraph_varpool_analyze_pending_decls ();

  timevar_push (TV_CGRAPHOPT);
  if (!quiet_flag)
    fprintf (stderr, "Performing interprocedural optimizations\n");

  cgraph_function_and_variable_visibility ();
  if (cgraph_dump_file)
    {
      fprintf (cgraph_dump_file, "Marked ");
      dump_cgraph (cgraph_dump_file);
    }


  if (errorcount == 0 && sorrycount == 0)
    ipa_passes ();



  cgraph_remove_unreachable_nodes (0, dump_file);
  cgraph_increase_alignment ();
  cgraph_global_info_ready = 1;
  if (cgraph_dump_file)
    {
      fprintf (cgraph_dump_file, "Optimized ");
      dump_cgraph (cgraph_dump_file);
      dump_varpool (cgraph_dump_file);
    }
  timevar_pop (TV_CGRAPHOPT);


  if (!quiet_flag)
    fprintf (stderr, "Assembling functions:\n");




  cgraph_mark_functions_to_output ();

  if (!flag_toplevel_reorder)
    cgraph_output_in_order ();
  else
    {
      cgraph_output_pending_asms ();

      cgraph_expand_all_functions ();
      cgraph_varpool_remove_unreferenced_decls ();

      cgraph_varpool_assemble_pending_decls ();
      cgraph_varpool_output_debug_info ();
    }

  if (cgraph_dump_file)
    {
      fprintf (cgraph_dump_file, "\nFinal ");
      dump_cgraph (cgraph_dump_file);
    }
}
