#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int total_vars; int nonpointer_vars; int unified_vars_static; int unified_vars_dynamic; int iterations; int num_edges; int num_implicit_edges; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TDF_STATS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__ stats ; 
 int /*<<< orphan*/  varinfo_t ; 
 int /*<<< orphan*/  varmap ; 

void
FUNC3 (FILE *outfile)
{
  unsigned int i;

  FUNC2 (outfile, "\nPoints-to sets\n\n");

  if (dump_flags & TDF_STATS)
    {
      FUNC2 (outfile, "Stats:\n");
      FUNC2 (outfile, "Total vars:               %d\n", stats.total_vars);
      FUNC2 (outfile, "Non-pointer vars:          %d\n",
	       stats.nonpointer_vars);
      FUNC2 (outfile, "Statically unified vars:  %d\n",
	       stats.unified_vars_static);
      FUNC2 (outfile, "Dynamically unified vars: %d\n",
	       stats.unified_vars_dynamic);
      FUNC2 (outfile, "Iterations:               %d\n", stats.iterations);
      FUNC2 (outfile, "Number of edges:          %d\n", stats.num_edges);
      FUNC2 (outfile, "Number of implicit edges: %d\n",
	       stats.num_implicit_edges);
    }

  for (i = 0; i < FUNC0 (varinfo_t, varmap); i++)
    FUNC1 (outfile, i);
}