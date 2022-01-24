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
typedef  void* __be32 ;
struct TYPE_4__ {void** table; } ;
struct TYPE_3__ {void* hash_chain; scalar_t__ parent; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,scalar_t__) ; 
 struct buffer_head* FUNC3 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__,int) ; 

int
FUNC10(struct inode *dir, struct buffer_head *rem_bh)
{
	struct super_block *sb;
	struct buffer_head *bh;
	u32 rem_ino, hash_ino;
	__be32 ino;
	int offset, retval;

	sb = dir->i_sb;
	rem_ino = rem_bh->b_blocknr;
	offset = FUNC5(sb, FUNC1(sb, rem_bh)->name+1, FUNC1(sb, rem_bh)->name[0]);
	FUNC9("AFFS: remove_hash(dir=%d, ino=%d, hashval=%d)\n", (u32)dir->i_ino, rem_ino, offset);

	bh = FUNC3(sb, dir->i_ino);
	if (!bh)
		return -EIO;

	retval = -ENOENT;
	hash_ino = FUNC6(FUNC0(bh)->table[offset]);
	while (hash_ino) {
		if (hash_ino == rem_ino) {
			ino = FUNC1(sb, rem_bh)->hash_chain;
			if (dir->i_ino == bh->b_blocknr)
				FUNC0(bh)->table[offset] = ino;
			else
				FUNC1(sb, bh)->hash_chain = ino;
			FUNC2(bh, FUNC6(ino) - hash_ino);
			FUNC7(bh, dir);
			FUNC1(sb, rem_bh)->parent = 0;
			retval = 0;
			break;
		}
		FUNC4(bh);
		bh = FUNC3(sb, hash_ino);
		if (!bh)
			return -EIO;
		hash_ino = FUNC6(FUNC1(sb, bh)->hash_chain);
	}

	FUNC4(bh);

	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	dir->i_version++;
	FUNC8(dir);

	return retval;
}