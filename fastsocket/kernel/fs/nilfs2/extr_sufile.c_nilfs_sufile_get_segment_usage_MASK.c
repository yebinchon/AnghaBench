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
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC6 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,scalar_t__,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *sufile, __u64 segnum,
				   struct nilfs_segment_usage **sup,
				   struct buffer_head **bhp)
{
	struct buffer_head *bh;
	struct nilfs_segment_usage *su;
	void *kaddr;
	int ret;

	/* segnum is 0 origin */
	if (segnum >= FUNC7(sufile))
		return -EINVAL;
	FUNC2(&FUNC0(sufile)->mi_sem);
	ret = FUNC8(sufile, segnum, 1, &bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC3(bh->b_page);
	su = FUNC6(sufile, segnum, bh, kaddr);
	if (FUNC5(su)) {
		FUNC4(bh->b_page);
		FUNC1(bh);
		ret = -EINVAL;
		goto out_sem;
	}

	if (sup != NULL)
		*sup = su;
	*bhp = bh;

 out_sem:
	FUNC9(&FUNC0(sufile)->mi_sem);
	return ret;
}