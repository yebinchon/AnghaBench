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
struct TYPE_2__ {long num_exprs_considered; int /*<<< orphan*/  num_copy_prop; int /*<<< orphan*/  num_const_prop; int /*<<< orphan*/  num_re; int /*<<< orphan*/  num_stmts; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  avail_exprs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ opt_stats ; 

void
FUNC3 (FILE *file)
{
  long n_exprs;

  FUNC1 (file, "Total number of statements:                   %6ld\n\n",
	   opt_stats.num_stmts);
  FUNC1 (file, "Exprs considered for dominator optimizations: %6ld\n",
           opt_stats.num_exprs_considered);

  n_exprs = opt_stats.num_exprs_considered;
  if (n_exprs == 0)
    n_exprs = 1;

  FUNC1 (file, "    Redundant expressions eliminated:         %6ld (%.0f%%)\n",
	   opt_stats.num_re, FUNC0 (opt_stats.num_re,
				      n_exprs));
  FUNC1 (file, "    Constants propagated:                     %6ld\n",
	   opt_stats.num_const_prop);
  FUNC1 (file, "    Copies propagated:                        %6ld\n",
	   opt_stats.num_copy_prop);

  FUNC1 (file, "\nHash table statistics:\n");

  FUNC1 (file, "    avail_exprs: ");
  FUNC2 (file, avail_exprs);
}