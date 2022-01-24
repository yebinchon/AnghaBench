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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_cache {int /*<<< orphan*/  ec_len; int /*<<< orphan*/  ec_start; int /*<<< orphan*/  ec_block; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ext4_ext_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_extent*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, ext4_lblk_t block,
			struct ext4_extent *ex)
{
	struct ext4_ext_cache cex;
	int ret = 0;

	ret = FUNC2(inode, block, &cex);
	if (ret) {
		ex->ee_block = FUNC1(cex.ec_block);
		FUNC3(ex, cex.ec_start);
		ex->ee_len = FUNC0(cex.ec_len);
	}

	return ret;
}