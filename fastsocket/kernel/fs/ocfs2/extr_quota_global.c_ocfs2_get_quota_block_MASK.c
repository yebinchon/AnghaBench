#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, int block,
				 struct buffer_head **bh)
{
	u64 pblock, pcount;
	int err;

	FUNC1(&FUNC0(inode)->ip_alloc_sem);
	err = FUNC3(inode, block, &pblock, &pcount, NULL);
	FUNC5(&FUNC0(inode)->ip_alloc_sem);
	if (err) {
		FUNC2(err);
		return err;
	}
	*bh = FUNC4(inode->i_sb, pblock);
	if (!*bh) {
		err = -EIO;
		FUNC2(err);
	}
	return err;
}