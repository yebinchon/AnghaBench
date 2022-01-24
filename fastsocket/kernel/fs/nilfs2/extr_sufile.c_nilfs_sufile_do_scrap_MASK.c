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
typedef  int /*<<< orphan*/  u64 ;
struct nilfs_segment_usage {scalar_t__ su_flags; scalar_t__ su_nblocks; int /*<<< orphan*/  su_lastmod; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long NILFS_SEGMENT_USAGE_DIRTY ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct nilfs_segment_usage*) ; 
 int FUNC7 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC8 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

void FUNC10(struct inode *sufile, __u64 segnum,
			   struct buffer_head *header_bh,
			   struct buffer_head *su_bh)
{
	struct nilfs_segment_usage *su;
	void *kaddr;
	int clean, dirty;

	kaddr = FUNC2(su_bh->b_page, KM_USER0);
	su = FUNC8(sufile, segnum, su_bh, kaddr);
	if (su->su_flags == FUNC0(1UL << NILFS_SEGMENT_USAGE_DIRTY) &&
	    su->su_nblocks == FUNC0(0)) {
		FUNC3(kaddr, KM_USER0);
		return;
	}
	clean = FUNC6(su);
	dirty = FUNC7(su);

	/* make the segment garbage */
	su->su_lastmod = FUNC1(0);
	su->su_nblocks = FUNC0(0);
	su->su_flags = FUNC0(1UL << NILFS_SEGMENT_USAGE_DIRTY);
	FUNC3(kaddr, KM_USER0);

	FUNC9(header_bh, clean ? (u64)-1 : 0, dirty ? 0 : 1);
	FUNC4(su_bh);
	FUNC5(sufile);
}