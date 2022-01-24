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
struct nilfs_palloc_req {struct buffer_head* pr_entry_bh; scalar_t__ pr_entry_nr; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct nilfs_palloc_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct nilfs_palloc_req*) ; 
 int FUNC5 (struct inode*,scalar_t__,int,struct buffer_head**) ; 
 int FUNC6 (struct inode*,struct nilfs_palloc_req*) ; 

int FUNC7(struct inode *ifile, ino_t *out_ino,
			     struct buffer_head **out_bh)
{
	struct nilfs_palloc_req req;
	int ret;

	req.pr_entry_nr = 0;  /* 0 says find free inode from beginning of
				 a group. dull code!! */
	req.pr_entry_bh = NULL;

	ret = FUNC6(ifile, &req);
	if (!ret) {
		ret = FUNC5(ifile, req.pr_entry_nr, 1,
						   &req.pr_entry_bh);
		if (ret < 0)
			FUNC3(ifile, &req);
	}
	if (ret < 0) {
		FUNC0(req.pr_entry_bh);
		return ret;
	}
	FUNC4(ifile, &req);
	FUNC1(req.pr_entry_bh);
	FUNC2(ifile);
	*out_ino = (ino_t)req.pr_entry_nr;
	*out_bh = req.pr_entry_bh;
	return 0;
}