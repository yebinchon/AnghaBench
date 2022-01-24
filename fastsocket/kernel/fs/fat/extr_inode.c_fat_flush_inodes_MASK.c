#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_3__* s_bdev; } ;
struct inode {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flush; } ;
struct TYPE_8__ {TYPE_1__ options; } ;
struct TYPE_7__ {TYPE_2__* bd_inode; } ;
struct TYPE_6__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct address_space*) ; 
 int FUNC2 (struct inode*) ; 

int FUNC3(struct super_block *sb, struct inode *i1, struct inode *i2)
{
	int ret = 0;
	if (!FUNC0(sb)->options.flush)
		return 0;
	if (i1)
		ret = FUNC2(i1);
	if (!ret && i2)
		ret = FUNC2(i2);
	if (!ret) {
		struct address_space *mapping = sb->s_bdev->bd_inode->i_mapping;
		ret = FUNC1(mapping);
	}
	return ret;
}