#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_bdev; TYPE_1__* ns_writer; } ;
struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_bdev; } ;
struct TYPE_4__ {struct the_nilfs* mi_nilfs; } ;
struct TYPE_3__ {struct super_block* s_super; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int EROFS ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct buffer_head* FUNC6 (struct inode*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,unsigned long,struct buffer_head*,void (*) (struct inode*,struct buffer_head*,void*)) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, unsigned long block,
				  struct buffer_head **out_bh,
				  void (*init_block)(struct inode *,
						     struct buffer_head *,
						     void *))
{
	struct the_nilfs *nilfs = FUNC0(inode)->mi_nilfs;
	struct super_block *sb = inode->i_sb;
	struct nilfs_transaction_info ti;
	struct buffer_head *bh;
	int err;

	if (!sb) {
		/*
		 * Make sure this function is not called from any
		 * read-only context.
		 */
		if (!nilfs->ns_writer) {
			FUNC1(1);
			err = -EROFS;
			goto out;
		}
		sb = nilfs->ns_writer->s_super;
	}

	FUNC9(sb, &ti, 0);

	err = -ENOMEM;
	bh = FUNC6(inode, inode->i_mapping, block, 0);
	if (FUNC12(!bh))
		goto failed_unlock;

	err = -EEXIST;
	if (FUNC3(bh))
		goto failed_bh;

	FUNC14(bh);
	if (FUNC3(bh))
		goto failed_bh;

	bh->b_bdev = nilfs->ns_bdev;
	err = FUNC7(inode, block, bh, init_block);
	if (FUNC5(!err)) {
		FUNC4(bh);
		*out_bh = bh;
	}

 failed_bh:
	FUNC13(bh->b_page);
	FUNC11(bh->b_page);
	FUNC2(bh);

 failed_unlock:
	if (FUNC5(!err))
		err = FUNC10(sb);
	else
		FUNC8(sb);
 out:
	return err;
}