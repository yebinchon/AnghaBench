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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_4__ {void** table; } ;
struct TYPE_3__ {void* hash_chain; void* parent; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,scalar_t__) ; 
 struct buffer_head* FUNC3 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct buffer_head*) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,scalar_t__) ; 

int
FUNC12(struct inode *dir, struct buffer_head *bh)
{
	struct super_block *sb = dir->i_sb;
	struct buffer_head *dir_bh;
	u32 ino, hash_ino;
	int offset;

	ino = bh->b_blocknr;
	offset = FUNC6(sb, FUNC1(sb, bh)->name + 1, FUNC1(sb, bh)->name[0]);

	FUNC11("AFFS: insert_hash(dir=%u, ino=%d)\n", (u32)dir->i_ino, ino);

	dir_bh = FUNC3(sb, dir->i_ino);
	if (!dir_bh)
		return -EIO;

	hash_ino = FUNC7(FUNC0(dir_bh)->table[offset]);
	while (hash_ino) {
		FUNC4(dir_bh);
		dir_bh = FUNC3(sb, hash_ino);
		if (!dir_bh)
			return -EIO;
		hash_ino = FUNC7(FUNC1(sb, dir_bh)->hash_chain);
	}
	FUNC1(sb, bh)->parent = FUNC8(dir->i_ino);
	FUNC1(sb, bh)->hash_chain = 0;
	FUNC5(sb, bh);

	if (dir->i_ino == dir_bh->b_blocknr)
		FUNC0(dir_bh)->table[offset] = FUNC8(ino);
	else
		FUNC1(sb, dir_bh)->hash_chain = FUNC8(ino);

	FUNC2(dir_bh, ino);
	FUNC9(dir_bh, dir);
	FUNC4(dir_bh);

	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	dir->i_version++;
	FUNC10(dir);

	return 0;
}