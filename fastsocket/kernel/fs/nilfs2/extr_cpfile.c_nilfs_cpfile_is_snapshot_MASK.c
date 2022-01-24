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
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nilfs_checkpoint*) ; 
 int FUNC6 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC7 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 int FUNC8 (struct inode*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct inode *cpfile, __u64 cno)
{
	struct buffer_head *bh;
	struct nilfs_checkpoint *cp;
	void *kaddr;
	int ret;

	/* CP number is invalid if it's zero or larger than the
	largest	exist one.*/
	if (cno == 0 || cno >= FUNC9(cpfile))
		return -ENOENT;
	FUNC2(&FUNC0(cpfile)->mi_sem);

	ret = FUNC8(cpfile, cno, 0, &bh);
	if (ret < 0)
		goto out;
	kaddr = FUNC3(bh->b_page, KM_USER0);
	cp = FUNC7(cpfile, cno, bh, kaddr);
	if (FUNC5(cp))
		ret = -ENOENT;
	else
		ret = FUNC6(cp);
	FUNC4(kaddr, KM_USER0);
	FUNC1(bh);

 out:
	FUNC10(&FUNC0(cpfile)->mi_sem);
	return ret;
}