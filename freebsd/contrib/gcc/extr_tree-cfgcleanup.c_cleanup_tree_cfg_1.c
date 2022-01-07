
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_control_flow () ;
 int cleanup_forwarder_blocks () ;
 int delete_unreachable_blocks () ;
 int end_recording_case_labels () ;
 int merge_seq_blocks () ;
 scalar_t__ optimize ;
 int start_recording_case_labels () ;

__attribute__((used)) static bool
cleanup_tree_cfg_1 (void)
{
  bool retval;

  retval = cleanup_control_flow ();
  retval |= delete_unreachable_blocks ();





  if (optimize > 0)
    {




      start_recording_case_labels ();
      retval |= cleanup_forwarder_blocks ();
      end_recording_case_labels ();
    }




  retval |= merge_seq_blocks ();

  return retval;
}
