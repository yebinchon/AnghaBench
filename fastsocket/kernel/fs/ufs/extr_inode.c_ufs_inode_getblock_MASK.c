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
typedef  int u64 ;
struct ufs_sb_private_info {scalar_t__ fs_magic; int s_sbbase; int s_fpb; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  __fs64 ;
typedef  int /*<<< orphan*/  __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ UFS2_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct buffer_head* FUNC10 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (struct super_block*,void*) ; 
 unsigned int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (struct inode*,void*,int /*<<< orphan*/ ,int,int,int*,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC18(struct inode *inode, struct buffer_head *bh,
		  u64 fragment, sector_t new_fragment, int *err,
		  long *phys, int *new, struct page *locked_page)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	struct buffer_head * result;
	unsigned blockoff;
	u64 tmp, goal, block;
	void *p;

	block = FUNC15 (fragment);
	blockoff = FUNC14 (fragment);

	FUNC1("ENTER, ino %lu, fragment %llu, new_fragment %llu, metadata %d\n",
	     inode->i_ino, (unsigned long long)fragment,
	     (unsigned long long)new_fragment, !phys);

	result = NULL;
	if (!bh)
		goto out;
	if (!FUNC4(bh)) {
		FUNC7 (READ, 1, &bh);
		FUNC17 (bh);
		if (!FUNC4(bh))
			goto out;
	}
	if (uspi->fs_magic == UFS2_MAGIC)
		p = (__fs64 *)bh->b_data + block;
	else
		p = (__fs32 *)bh->b_data + block;
repeat:
	tmp = FUNC13(sb, p);
	if (tmp) {
		if (!phys) {
			result = FUNC10(sb, uspi->s_sbbase + tmp + blockoff);
			if (tmp == FUNC13(sb, p))
				goto out;
			FUNC3 (result);
			goto repeat;
		} else {
			*phys = uspi->s_sbbase + tmp + blockoff;
			goto out;
		}
	}

	if (block && (uspi->fs_magic == UFS2_MAGIC ?
		      (tmp = FUNC6(sb, ((__fs64 *)bh->b_data)[block-1])) :
		      (tmp = FUNC5(sb, ((__fs32 *)bh->b_data)[block-1]))))
		goal = tmp + uspi->s_fpb;
	else
		goal = bh->b_blocknr + uspi->s_fpb;
	tmp = FUNC16(inode, p, FUNC12(new_fragment), goal,
				uspi->s_fpb, err, locked_page);
	if (!tmp) {
		if (FUNC13(sb, p))
			goto repeat;
		goto out;
	}		


	if (!phys) {
		result = FUNC10(sb, uspi->s_sbbase + tmp + blockoff);
	} else {
		*phys = uspi->s_sbbase + tmp + blockoff;
		*new = 1;
	}

	FUNC8(bh);
	if (FUNC0(inode))
		FUNC11(bh);
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC9(inode);
	FUNC1("result %llu\n", (unsigned long long)tmp + blockoff);
out:
	FUNC3 (bh);
	FUNC1("EXIT\n");
	return result;
}