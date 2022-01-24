#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nilfs_cpinfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ssl_next; } ;
struct nilfs_cpfile_header {TYPE_1__ ch_snapshot_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  ssl_next; } ;
struct nilfs_checkpoint {TYPE_2__ cp_snapshot_list; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_6__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC9 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 struct nilfs_cpfile_header* FUNC10 (struct inode*,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct nilfs_checkpoint*,struct nilfs_cpinfo*) ; 
 unsigned long FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC14 (struct inode*,struct buffer_head**) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC17(struct inode *cpfile, __u64 *cnop,
					  void *buf, unsigned cisz, size_t nci)
{
	struct buffer_head *bh;
	struct nilfs_cpfile_header *header;
	struct nilfs_checkpoint *cp;
	struct nilfs_cpinfo *ci = buf;
	__u64 curr = *cnop, next;
	unsigned long curr_blkoff, next_blkoff;
	void *kaddr;
	int n = 0, ret;

	FUNC3(&FUNC0(cpfile)->mi_sem);

	if (curr == 0) {
		ret = FUNC14(cpfile, &bh);
		if (ret < 0)
			goto out;
		kaddr = FUNC4(bh->b_page, KM_USER0);
		header = FUNC10(cpfile, bh, kaddr);
		curr = FUNC6(header->ch_snapshot_list.ssl_next);
		FUNC5(kaddr, KM_USER0);
		FUNC2(bh);
		if (curr == 0) {
			ret = 0;
			goto out;
		}
	} else if (FUNC15(curr == ~(__u64)0)) {
		ret = 0;
		goto out;
	}

	curr_blkoff = FUNC12(cpfile, curr);
	ret = FUNC13(cpfile, curr, 0, &bh);
	if (FUNC15(ret < 0)) {
		if (ret == -ENOENT)
			ret = 0; /* No snapshots (started from a hole block) */
		goto out;
	}
	kaddr = FUNC4(bh->b_page, KM_USER0);
	while (n < nci) {
		cp = FUNC9(cpfile, curr, bh, kaddr);
		curr = ~(__u64)0; /* Terminator */
		if (FUNC15(FUNC7(cp) ||
			     !FUNC8(cp)))
			break;
		FUNC11(cpfile, cp, ci);
		ci = (void *)ci + cisz;
		n++;
		next = FUNC6(cp->cp_snapshot_list.ssl_next);
		if (next == 0)
			break; /* reach end of the snapshot list */

		next_blkoff = FUNC12(cpfile, next);
		if (curr_blkoff != next_blkoff) {
			FUNC5(kaddr, KM_USER0);
			FUNC2(bh);
			ret = FUNC13(cpfile, next,
								0, &bh);
			if (FUNC15(ret < 0)) {
				FUNC1(ret == -ENOENT);
				goto out;
			}
			kaddr = FUNC4(bh->b_page, KM_USER0);
		}
		curr = next;
		curr_blkoff = next_blkoff;
	}
	FUNC5(kaddr, KM_USER0);
	FUNC2(bh);
	*cnop = curr;
	ret = n;

 out:
	FUNC16(&FUNC0(cpfile)->mi_sem);
	return ret;
}