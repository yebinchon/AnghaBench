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
struct nilfs_snapshot_list {void* ssl_prev; void* ssl_next; } ;
struct nilfs_cpfile_header {int /*<<< orphan*/  ch_nsnapshots; } ;
struct nilfs_checkpoint {struct nilfs_snapshot_list cp_snapshot_list; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_checkpoint*) ; 
 scalar_t__ FUNC10 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC12 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 struct nilfs_cpfile_header* FUNC13 (struct inode*,struct buffer_head*,void*) ; 
 struct nilfs_snapshot_list* FUNC14 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 int FUNC15 (struct inode*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC16 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct inode *cpfile, __u64 cno)
{
	struct buffer_head *header_bh, *next_bh, *prev_bh, *cp_bh;
	struct nilfs_cpfile_header *header;
	struct nilfs_checkpoint *cp;
	struct nilfs_snapshot_list *list;
	__u64 next, prev;
	void *kaddr;
	int ret;

	if (cno == 0)
		return -ENOENT; /* checkpoint number 0 is invalid */
	FUNC3(&FUNC0(cpfile)->mi_sem);

	ret = FUNC15(cpfile, cno, 0, &cp_bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC5(cp_bh->b_page, KM_USER0);
	cp = FUNC12(cpfile, cno, cp_bh, kaddr);
	if (FUNC10(cp)) {
		ret = -ENOENT;
		FUNC6(kaddr, KM_USER0);
		goto out_cp;
	}
	if (!FUNC11(cp)) {
		ret = 0;
		FUNC6(kaddr, KM_USER0);
		goto out_cp;
	}

	list = &cp->cp_snapshot_list;
	next = FUNC8(list->ssl_next);
	prev = FUNC8(list->ssl_prev);
	FUNC6(kaddr, KM_USER0);

	ret = FUNC16(cpfile, &header_bh);
	if (ret < 0)
		goto out_cp;
	if (next != 0) {
		ret = FUNC15(cpfile, next, 0,
							&next_bh);
		if (ret < 0)
			goto out_header;
	} else {
		next_bh = header_bh;
		FUNC4(next_bh);
	}
	if (prev != 0) {
		ret = FUNC15(cpfile, prev, 0,
							&prev_bh);
		if (ret < 0)
			goto out_next;
	} else {
		prev_bh = header_bh;
		FUNC4(prev_bh);
	}

	kaddr = FUNC5(next_bh->b_page, KM_USER0);
	list = FUNC14(
		cpfile, next, next_bh, kaddr);
	list->ssl_prev = FUNC2(prev);
	FUNC6(kaddr, KM_USER0);

	kaddr = FUNC5(prev_bh->b_page, KM_USER0);
	list = FUNC14(
		cpfile, prev, prev_bh, kaddr);
	list->ssl_next = FUNC2(next);
	FUNC6(kaddr, KM_USER0);

	kaddr = FUNC5(cp_bh->b_page, KM_USER0);
	cp = FUNC12(cpfile, cno, cp_bh, kaddr);
	cp->cp_snapshot_list.ssl_next = FUNC2(0);
	cp->cp_snapshot_list.ssl_prev = FUNC2(0);
	FUNC9(cp);
	FUNC6(kaddr, KM_USER0);

	kaddr = FUNC5(header_bh->b_page, KM_USER0);
	header = FUNC13(cpfile, header_bh, kaddr);
	FUNC7(&header->ch_nsnapshots, -1);
	FUNC6(kaddr, KM_USER0);

	FUNC17(next_bh);
	FUNC17(prev_bh);
	FUNC17(cp_bh);
	FUNC17(header_bh);
	FUNC18(cpfile);

	FUNC1(prev_bh);

 out_next:
	FUNC1(next_bh);

 out_header:
	FUNC1(header_bh);

 out_cp:
	FUNC1(cp_bh);

 out_sem:
	FUNC19(&FUNC0(cpfile)->mi_sem);
	return ret;
}