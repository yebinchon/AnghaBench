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
typedef  int /*<<< orphan*/  uint32_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_position {int offset; int /*<<< orphan*/  bh; struct kernel_lb_addr block; } ;
struct allocExtDesc {int dummy; } ;
typedef  int int8_t ;

/* Variables and functions */
 int EXT_NEXT_EXTENT_ALLOCDECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int8_t FUNC5(struct inode *inode, struct extent_position *epos,
		     struct kernel_lb_addr *eloc, uint32_t *elen, int inc)
{
	int8_t etype;

	while ((etype = FUNC1(inode, epos, eloc, elen, inc)) ==
	       (EXT_NEXT_EXTENT_ALLOCDECS >> 30)) {
		int block;
		epos->block = *eloc;
		epos->offset = sizeof(struct allocExtDesc);
		FUNC0(epos->bh);
		block = FUNC3(inode->i_sb, &epos->block, 0);
		epos->bh = FUNC4(inode->i_sb, block);
		if (!epos->bh) {
			FUNC2("reading block %d failed!\n", block);
			return -1;
		}
	}

	return etype;
}