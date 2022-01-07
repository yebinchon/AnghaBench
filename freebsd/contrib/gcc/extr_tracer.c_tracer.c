
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 int cfg_layout_finalize () ;
 int cfg_layout_initialize (unsigned int) ;
 int cleanup_cfg (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int layout_superblocks () ;
 int mark_dfs_back_edges () ;
 scalar_t__ n_basic_blocks ;
 int tail_duplicate () ;

void
tracer (unsigned int flags)
{
  if (n_basic_blocks <= NUM_FIXED_BLOCKS + 1)
    return;

  cfg_layout_initialize (flags);
  mark_dfs_back_edges ();
  if (dump_file)
    dump_flow_info (dump_file, dump_flags);
  tail_duplicate ();
  layout_superblocks ();
  if (dump_file)
    dump_flow_info (dump_file, dump_flags);
  cfg_layout_finalize ();


  cleanup_cfg (CLEANUP_EXPENSIVE);
}
