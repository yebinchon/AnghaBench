
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDF_DETAILS ;
 int dump_dataflow_sets () ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int) ;
 int frame_pointer_needed ;
 int mark_dfs_back_edges () ;
 int n_basic_blocks ;
 int n_edges ;
 int vt_emit_notes () ;
 int vt_finalize () ;
 int vt_find_locations () ;
 int vt_initialize () ;
 int vt_stack_adjustments () ;

unsigned int
variable_tracking_main (void)
{
  if (n_basic_blocks > 500 && n_edges / n_basic_blocks >= 20)
    return 0;

  mark_dfs_back_edges ();
  vt_initialize ();
  if (!frame_pointer_needed)
    {
      if (!vt_stack_adjustments ())
 {
   vt_finalize ();
   return 0;
 }
    }

  vt_find_locations ();
  vt_emit_notes ();

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      dump_dataflow_sets ();
      dump_flow_info (dump_file, dump_flags);
    }

  vt_finalize ();
  return 0;
}
