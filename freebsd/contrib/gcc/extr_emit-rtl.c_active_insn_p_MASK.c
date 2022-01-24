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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC5 (rtx insn)
{
  return (FUNC0 (insn) || FUNC2 (insn)
	  || (FUNC3 (insn)
	      && (! reload_completed
		  || (FUNC1 (FUNC4 (insn)) != USE
		      && FUNC1 (FUNC4 (insn)) != CLOBBER))));
}