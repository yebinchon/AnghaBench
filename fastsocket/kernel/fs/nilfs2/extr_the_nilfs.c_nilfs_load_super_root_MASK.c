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
struct the_nilfs {unsigned int ns_inode_size; void* ns_dat; void* ns_gc_dat; void* ns_cpfile; void* ns_sufile; int /*<<< orphan*/  ns_nongc_ctime; int /*<<< orphan*/  ns_sem; struct nilfs_super_block** ns_sbp; } ;
struct nilfs_super_root {int /*<<< orphan*/  sr_nongc_ctime; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_segment_usage_size; int /*<<< orphan*/  s_checkpoint_size; int /*<<< orphan*/  s_dat_entry_size; } ;
struct nilfs_sufile_header {int dummy; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_super; } ;
struct nilfs_cpfile_header {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NILFS_CPFILE_INO ; 
 int /*<<< orphan*/  NILFS_DAT_INO ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  NILFS_SUFILE_INO ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (struct the_nilfs*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (void*,void*) ; 
 int FUNC14 (void*,unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct the_nilfs *nilfs,
				 struct nilfs_sb_info *sbi, sector_t sr_block)
{
	static struct lock_class_key dat_lock_key;
	struct buffer_head *bh_sr;
	struct nilfs_super_root *raw_sr;
	struct nilfs_super_block **sbp = nilfs->ns_sbp;
	unsigned dat_entry_size, segment_usage_size, checkpoint_size;
	unsigned inode_size;
	int err;

	err = FUNC15(sbi->s_super, sr_block, &bh_sr, 1);
	if (FUNC16(err))
		return err;

	FUNC5(&nilfs->ns_sem);
	dat_entry_size = FUNC6(sbp[0]->s_dat_entry_size);
	checkpoint_size = FUNC6(sbp[0]->s_checkpoint_size);
	segment_usage_size = FUNC6(sbp[0]->s_segment_usage_size);
	FUNC17(&nilfs->ns_sem);

	inode_size = nilfs->ns_inode_size;

	err = -ENOMEM;
	nilfs->ns_dat = FUNC10(nilfs, NULL, NILFS_DAT_INO);
	if (FUNC16(!nilfs->ns_dat))
		goto failed;

	nilfs->ns_gc_dat = FUNC10(nilfs, NULL, NILFS_DAT_INO);
	if (FUNC16(!nilfs->ns_gc_dat))
		goto failed_dat;

	nilfs->ns_cpfile = FUNC10(nilfs, NULL, NILFS_CPFILE_INO);
	if (FUNC16(!nilfs->ns_cpfile))
		goto failed_gc_dat;

	nilfs->ns_sufile = FUNC10(nilfs, NULL, NILFS_SUFILE_INO);
	if (FUNC16(!nilfs->ns_sufile))
		goto failed_cpfile;

	err = FUNC14(nilfs->ns_dat, dat_entry_size);
	if (FUNC16(err))
		goto failed_sufile;

	err = FUNC14(nilfs->ns_gc_dat, dat_entry_size);
	if (FUNC16(err))
		goto failed_sufile;

	FUNC8(&FUNC0(nilfs->ns_dat)->mi_sem, &dat_lock_key);
	FUNC8(&FUNC0(nilfs->ns_gc_dat)->mi_sem, &dat_lock_key);

	FUNC13(nilfs->ns_dat, nilfs->ns_gc_dat);
	FUNC12(nilfs->ns_cpfile, checkpoint_size,
				 sizeof(struct nilfs_cpfile_header));
	FUNC12(nilfs->ns_sufile, segment_usage_size,
				 sizeof(struct nilfs_sufile_header));

	err = FUNC11(
		nilfs->ns_dat, bh_sr, FUNC2(inode_size));
	if (FUNC16(err))
		goto failed_sufile;

	err = FUNC11(
		nilfs->ns_cpfile, bh_sr, FUNC1(inode_size));
	if (FUNC16(err))
		goto failed_sufile;

	err = FUNC11(
		nilfs->ns_sufile, bh_sr, FUNC3(inode_size));
	if (FUNC16(err))
		goto failed_sufile;

	raw_sr = (struct nilfs_super_root *)bh_sr->b_data;
	nilfs->ns_nongc_ctime = FUNC7(raw_sr->sr_nongc_ctime);

 failed:
	FUNC4(bh_sr);
	return err;

 failed_sufile:
	FUNC9(nilfs->ns_sufile);

 failed_cpfile:
	FUNC9(nilfs->ns_cpfile);

 failed_gc_dat:
	FUNC9(nilfs->ns_gc_dat);

 failed_dat:
	FUNC9(nilfs->ns_dat);
	goto failed;
}