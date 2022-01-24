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
 unsigned int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FLOOR_DIV_EXPR ; 
 int /*<<< orphan*/  FLOOR_MOD_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  sizetype ; 

void
FUNC4 (tree *poffset, tree *pbitpos, unsigned int off_align,
	      tree pos)
{
  *poffset = FUNC2 (MULT_EXPR,
			 FUNC1 (sizetype,
				       FUNC2 (FLOOR_DIV_EXPR, pos,
						   FUNC0 (off_align))),
			 FUNC3 (off_align / BITS_PER_UNIT));
  *pbitpos = FUNC2 (FLOOR_MOD_EXPR, pos, FUNC0 (off_align));
}