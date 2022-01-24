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
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct nilfs_dat_entry* FUNC4 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC6(struct inode *dat, __u64 vblocknr, sector_t *blocknrp)
{
	struct buffer_head *entry_bh;
	struct nilfs_dat_entry *entry;
	sector_t blocknr;
	void *kaddr;
	int ret;

	ret = FUNC5(dat, vblocknr, 0, &entry_bh);
	if (ret < 0)
		return ret;

	kaddr = FUNC1(entry_bh->b_page, KM_USER0);
	entry = FUNC4(dat, vblocknr, entry_bh, kaddr);
	blocknr = FUNC3(entry->de_blocknr);
	if (blocknr == 0) {
		ret = -ENOENT;
		goto out;
	}
	if (blocknrp != NULL)
		*blocknrp = blocknr;

 out:
	FUNC2(kaddr, KM_USER0);
	FUNC0(entry_bh);
	return ret;
}