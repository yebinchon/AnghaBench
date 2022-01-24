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
struct page {int dummy; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_super; } ;
struct nilfs_recovery_block {int /*<<< orphan*/  blocknr; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct nilfs_sb_info *sbi,
				     struct nilfs_recovery_block *rb,
				     struct page *page)
{
	struct buffer_head *bh_org;
	void *kaddr;

	bh_org = FUNC5(sbi->s_super, rb->blocknr);
	if (FUNC6(!bh_org))
		return -EIO;

	kaddr = FUNC2(page, KM_USER0);
	FUNC4(kaddr + FUNC0(bh_org), bh_org->b_data, bh_org->b_size);
	FUNC3(kaddr, KM_USER0);
	FUNC1(bh_org);
	return 0;
}