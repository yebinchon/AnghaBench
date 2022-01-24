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
struct nilfs_vinfo {unsigned long vi_vblocknr; void* vi_blocknr; void* vi_end; void* vi_start; } ;
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; int /*<<< orphan*/  de_end; int /*<<< orphan*/  de_start; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int ssize_t ;
typedef  unsigned long __u64 ;
struct TYPE_2__ {unsigned long mi_entries_per_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nilfs_dat_entry* FUNC6 (struct inode*,unsigned long,struct buffer_head*,void*) ; 
 int FUNC7 (struct inode*,unsigned long,int /*<<< orphan*/ ,struct buffer_head**) ; 

ssize_t FUNC8(struct inode *dat, void *buf, unsigned visz,
			    size_t nvi)
{
	struct buffer_head *entry_bh;
	struct nilfs_dat_entry *entry;
	struct nilfs_vinfo *vinfo = buf;
	__u64 first, last;
	void *kaddr;
	unsigned long entries_per_block = FUNC0(dat)->mi_entries_per_block;
	int i, j, n, ret;

	for (i = 0; i < nvi; i += n) {
		ret = FUNC7(dat, vinfo->vi_vblocknr,
						   0, &entry_bh);
		if (ret < 0)
			return ret;
		kaddr = FUNC3(entry_bh->b_page, KM_USER0);
		/* last virtual block number in this block */
		first = vinfo->vi_vblocknr;
		FUNC2(first, entries_per_block);
		first *= entries_per_block;
		last = first + entries_per_block - 1;
		for (j = i, n = 0;
		     j < nvi && vinfo->vi_vblocknr >= first &&
			     vinfo->vi_vblocknr <= last;
		     j++, n++, vinfo = (void *)vinfo + visz) {
			entry = FUNC6(
				dat, vinfo->vi_vblocknr, entry_bh, kaddr);
			vinfo->vi_start = FUNC5(entry->de_start);
			vinfo->vi_end = FUNC5(entry->de_end);
			vinfo->vi_blocknr = FUNC5(entry->de_blocknr);
		}
		FUNC4(kaddr, KM_USER0);
		FUNC1(entry_bh);
	}

	return nvi;
}