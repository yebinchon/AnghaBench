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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (FILE *dump, int sched_verbose, rtx *ready, int *pn_ready,
		    int clock_var)
{
  return FUNC0 (dump, sched_verbose, ready,
				 pn_ready, clock_var, 0);
}