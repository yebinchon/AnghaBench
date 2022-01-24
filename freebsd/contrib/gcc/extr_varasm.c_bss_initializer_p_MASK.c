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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * error_mark_node ; 
 scalar_t__ flag_zero_initialized_in_bss ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3 (tree decl)
{
  return (FUNC0 (decl) == NULL
	  || FUNC0 (decl) == error_mark_node
	  || (flag_zero_initialized_in_bss
	      /* Leave constant zeroes in .rodata so they
		 can be shared.  */
	      && !FUNC1 (decl)
	      && FUNC2 (FUNC0 (decl))));
}