#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ calls; int /*<<< orphan*/  calls_executed; scalar_t__ branches; int /*<<< orphan*/  branches_taken; int /*<<< orphan*/  branches_executed; scalar_t__ lines; int /*<<< orphan*/  lines_executed; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ coverage_t ;

/* Variables and functions */
 scalar_t__ flag_branches ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC2 (const coverage_t *coverage, const char *title)
{
  FUNC0 (stdout, "%s '%s'\n", title, coverage->name);

  if (coverage->lines)
    FUNC0 (stdout, "Lines executed:%s of %d\n",
	     FUNC1 (coverage->lines_executed, coverage->lines, 2),
	     coverage->lines);
  else
    FUNC0 (stdout, "No executable lines\n");

  if (flag_branches)
    {
      if (coverage->branches)
	{
	  FUNC0 (stdout, "Branches executed:%s of %d\n",
		   FUNC1 (coverage->branches_executed,
				coverage->branches, 2),
		   coverage->branches);
	  FUNC0 (stdout, "Taken at least once:%s of %d\n",
		   FUNC1 (coverage->branches_taken,
				coverage->branches, 2),
		   coverage->branches);
	}
      else
	FUNC0 (stdout, "No branches\n");
      if (coverage->calls)
	FUNC0 (stdout, "Calls executed:%s of %d\n",
		 FUNC1 (coverage->calls_executed, coverage->calls, 2),
		 coverage->calls);
      else
	FUNC0 (stdout, "No calls\n");
    }
}