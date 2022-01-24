#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 int* total_hist_br_prob ; 
 int total_num_blocks ; 
 int total_num_blocks_created ; 
 int total_num_branches ; 
 int total_num_edges ; 
 int total_num_edges_ignored ; 
 int total_num_edges_instrumented ; 
 int total_num_never_executed ; 
 int total_num_passes ; 
 int total_num_times_called ; 

void
FUNC1 (void)
{
  if (dump_file)
    {
      FUNC0 (dump_file, "\n");
      FUNC0 (dump_file, "Total number of blocks: %d\n",
	       total_num_blocks);
      FUNC0 (dump_file, "Total number of edges: %d\n", total_num_edges);
      FUNC0 (dump_file, "Total number of ignored edges: %d\n",
	       total_num_edges_ignored);
      FUNC0 (dump_file, "Total number of instrumented edges: %d\n",
	       total_num_edges_instrumented);
      FUNC0 (dump_file, "Total number of blocks created: %d\n",
	       total_num_blocks_created);
      FUNC0 (dump_file, "Total number of graph solution passes: %d\n",
	       total_num_passes);
      if (total_num_times_called != 0)
	FUNC0 (dump_file, "Average number of graph solution passes: %d\n",
		 (total_num_passes + (total_num_times_called  >> 1))
		 / total_num_times_called);
      FUNC0 (dump_file, "Total number of branches: %d\n",
	       total_num_branches);
      FUNC0 (dump_file, "Total number of branches never executed: %d\n",
	       total_num_never_executed);
      if (total_num_branches)
	{
	  int i;

	  for (i = 0; i < 10; i++)
	    FUNC0 (dump_file, "%d%% branches in range %d-%d%%\n",
		     (total_hist_br_prob[i] + total_hist_br_prob[19-i]) * 100
		     / total_num_branches, 5*i, 5*i+5);
	}
    }
}