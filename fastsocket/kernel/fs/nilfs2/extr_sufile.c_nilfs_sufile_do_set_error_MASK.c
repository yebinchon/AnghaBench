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
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct nilfs_segment_usage*) ; 
 scalar_t__ FUNC5 (struct nilfs_segment_usage*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC7 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int,int /*<<< orphan*/ ) ; 

void FUNC9(struct inode *sufile, __u64 segnum,
			       struct buffer_head *header_bh,
			       struct buffer_head *su_bh)
{
	struct nilfs_segment_usage *su;
	void *kaddr;
	int suclean;

	kaddr = FUNC0(su_bh->b_page, KM_USER0);
	su = FUNC7(sufile, segnum, su_bh, kaddr);
	if (FUNC5(su)) {
		FUNC1(kaddr, KM_USER0);
		return;
	}
	suclean = FUNC4(su);
	FUNC6(su);
	FUNC1(kaddr, KM_USER0);

	if (suclean)
		FUNC8(header_bh, -1, 0);
	FUNC2(su_bh);
	FUNC3(sufile);
}