#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int /*<<< orphan*/  pr_entry_nr; } ;
struct nilfs_inode {scalar_t__ i_flags; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct nilfs_palloc_req*) ; 
 struct nilfs_inode* FUNC5 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct nilfs_palloc_req*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC8 (struct inode*,struct nilfs_palloc_req*) ; 

int FUNC9(struct inode *ifile, ino_t ino)
{
	struct nilfs_palloc_req req = {
		.pr_entry_nr = ino, .pr_entry_bh = NULL
	};
	struct nilfs_inode *raw_inode;
	void *kaddr;
	int ret;

	ret = FUNC8(ifile, &req);
	if (!ret) {
		ret = FUNC7(ifile, req.pr_entry_nr, 0,
						   &req.pr_entry_bh);
		if (ret < 0)
			FUNC4(ifile, &req);
	}
	if (ret < 0) {
		FUNC0(req.pr_entry_bh);
		return ret;
	}

	kaddr = FUNC1(req.pr_entry_bh->b_page, KM_USER0);
	raw_inode = FUNC5(ifile, req.pr_entry_nr,
						 req.pr_entry_bh, kaddr);
	raw_inode->i_flags = 0;
	FUNC2(kaddr, KM_USER0);

	FUNC3(req.pr_entry_bh);
	FUNC0(req.pr_entry_bh);

	FUNC6(ifile, &req);

	return 0;
}