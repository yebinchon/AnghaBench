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
struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int /*<<< orphan*/  pr_entry_nr; } ;
struct nilfs_dat_entry {void* de_blocknr; void* de_end; void* de_start; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  NILFS_CNO_MIN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct nilfs_palloc_req*) ; 
 struct nilfs_dat_entry* FUNC4 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct nilfs_palloc_req*) ; 

void FUNC6(struct inode *dat, struct nilfs_palloc_req *req)
{
	struct nilfs_dat_entry *entry;
	void *kaddr;

	kaddr = FUNC1(req->pr_entry_bh->b_page, KM_USER0);
	entry = FUNC4(dat, req->pr_entry_nr,
					     req->pr_entry_bh, kaddr);
	entry->de_start = FUNC0(NILFS_CNO_MIN);
	entry->de_end = FUNC0(NILFS_CNO_MIN);
	entry->de_blocknr = FUNC0(0);
	FUNC2(kaddr, KM_USER0);

	FUNC3(dat, req);
	FUNC5(dat, req);
}