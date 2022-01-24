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
struct the_nilfs {unsigned int ns_inode_size; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_nongc_ctime; } ;
struct nilfs_super_root {scalar_t__ sr_flags; int /*<<< orphan*/  sr_nongc_ctime; int /*<<< orphan*/  sr_bytes; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_seg_ctime; struct buffer_head* sc_super_root; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SR_BYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct the_nilfs*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nilfs_sc_info *sci,
					     struct the_nilfs *nilfs)
{
	struct buffer_head *bh_sr = sci->sc_super_root;
	struct nilfs_super_root *raw_sr =
		(struct nilfs_super_root *)bh_sr->b_data;
	unsigned isz = nilfs->ns_inode_size;

	raw_sr->sr_bytes = FUNC3(NILFS_SR_BYTES);
	raw_sr->sr_nongc_ctime
		= FUNC4(FUNC6() ?
			      nilfs->ns_nongc_ctime : sci->sc_seg_ctime);
	raw_sr->sr_flags = 0;

	FUNC7(
		FUNC5(nilfs), bh_sr, FUNC1(isz));
	FUNC7(
		nilfs->ns_cpfile, bh_sr, FUNC0(isz));
	FUNC7(
		nilfs->ns_sufile, bh_sr, FUNC2(isz));
}