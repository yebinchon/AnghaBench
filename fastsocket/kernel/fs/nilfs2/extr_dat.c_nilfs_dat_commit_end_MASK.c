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
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; int /*<<< orphan*/  de_end; int /*<<< orphan*/  de_start; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct nilfs_palloc_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct nilfs_palloc_req*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 struct nilfs_dat_entry* FUNC8 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 

void FUNC9(struct inode *dat, struct nilfs_palloc_req *req,
			  int dead)
{
	struct nilfs_dat_entry *entry;
	__u64 start, end;
	sector_t blocknr;
	void *kaddr;

	kaddr = FUNC2(req->pr_entry_bh->b_page, KM_USER0);
	entry = FUNC8(dat, req->pr_entry_nr,
					     req->pr_entry_bh, kaddr);
	end = start = FUNC4(entry->de_start);
	if (!dead) {
		end = FUNC7(dat);
		FUNC0(start > end);
	}
	entry->de_end = FUNC1(end);
	blocknr = FUNC4(entry->de_blocknr);
	FUNC3(kaddr, KM_USER0);

	if (blocknr == 0)
		FUNC6(dat, req);
	else
		FUNC5(dat, req);
}