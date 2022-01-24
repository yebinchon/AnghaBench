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
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_MINIMAL_TOC ; 
 scalar_t__ TARGET_TOC ; 
 scalar_t__ TOC_REGISTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool
FUNC4 (rtx x)
{
  return (TARGET_TOC
	  && FUNC0 (x) == PLUS
	  && FUNC0 (FUNC2 (x, 0)) == REG
	  && (TARGET_MINIMAL_TOC || FUNC1 (FUNC2 (x, 0)) == TOC_REGISTER)
	  && FUNC3 (FUNC2 (x, 1)));
}