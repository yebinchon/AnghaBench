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
struct extent_position {int /*<<< orphan*/  bh; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EXT_RECORDED_ALLOCATED ; 
 int /*<<< orphan*/  UDF_FLAG_VARCONV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

long FUNC7(struct inode *inode, sector_t block)
{
	struct kernel_lb_addr eloc;
	uint32_t elen;
	sector_t offset;
	struct extent_position epos = {};
	int ret;

	FUNC3();

	if (FUNC2(inode, block, &epos, &eloc, &elen, &offset) ==
						(EXT_RECORDED_ALLOCATED >> 30))
		ret = FUNC5(inode->i_sb, &eloc, offset);
	else
		ret = 0;

	FUNC6();
	FUNC1(epos.bh);

	if (FUNC0(inode->i_sb, UDF_FLAG_VARCONV))
		return FUNC4(ret);
	else
		return ret;
}