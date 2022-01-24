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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ABI_V4 ; 
 scalar_t__ CONST ; 
 scalar_t__ DEFAULT_ABI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  TARGET_TOC ; 
 int /*<<< orphan*/  flag_pic ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC2 (enum machine_mode mode, rtx x)
{
  return (DEFAULT_ABI == ABI_V4
	  && !flag_pic && !TARGET_TOC
	  && (FUNC0 (x) == SYMBOL_REF || FUNC0 (x) == CONST)
	  && FUNC1 (x, mode));
}