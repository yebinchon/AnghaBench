
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* total_hist_br_prob ;
 scalar_t__ total_num_blocks ;
 scalar_t__ total_num_blocks_created ;
 scalar_t__ total_num_branches ;
 scalar_t__ total_num_edges ;
 scalar_t__ total_num_edges_ignored ;
 scalar_t__ total_num_edges_instrumented ;
 scalar_t__ total_num_never_executed ;
 scalar_t__ total_num_passes ;
 scalar_t__ total_num_times_called ;

void
init_branch_prob (void)
{
  int i;

  total_num_blocks = 0;
  total_num_edges = 0;
  total_num_edges_ignored = 0;
  total_num_edges_instrumented = 0;
  total_num_blocks_created = 0;
  total_num_passes = 0;
  total_num_times_called = 0;
  total_num_branches = 0;
  total_num_never_executed = 0;
  for (i = 0; i < 20; i++)
    total_hist_br_prob[i] = 0;
}
