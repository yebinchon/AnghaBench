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
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  sizetype ; 

void
FUNC5 (tree *poffset, tree *pbitpos, unsigned int off_align)
{
  /* If the bit position is now larger than it should be, adjust it
     downwards.  */
  if (FUNC1 (*pbitpos, off_align) >= 0)
    {
      tree extra_aligns = FUNC3 (FLOOR_DIV_EXPR, *pbitpos,
				      FUNC0 (off_align));

      *poffset
	= FUNC3 (PLUS_EXPR, *poffset,
		      FUNC3 (MULT_EXPR,
				  FUNC2 (sizetype, extra_aligns),
				  FUNC4 (off_align / BITS_PER_UNIT)));

      *pbitpos
	= FUNC3 (FLOOR_MOD_EXPR, *pbitpos, FUNC0 (off_align));
    }
}