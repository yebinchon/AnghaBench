#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  toupper_t ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * table; } ;
struct TYPE_5__ {int /*<<< orphan*/  hash_chain; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  EIO ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 size_t FUNC6 (struct super_block*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct buffer_head *
FUNC10(struct inode *dir, struct dentry *dentry)
{
	struct super_block *sb = dir->i_sb;
	struct buffer_head *bh;
	toupper_t toupper = FUNC5(sb);
	u32 key;

	FUNC9("AFFS: find_entry(\"%.*s\")\n", (int)dentry->d_name.len, dentry->d_name.name);

	bh = FUNC3(sb, dir->i_ino);
	if (!bh)
		return FUNC2(-EIO);

	key = FUNC8(FUNC0(bh)->table[FUNC6(sb, dentry->d_name.name, dentry->d_name.len)]);

	for (;;) {
		FUNC4(bh);
		if (key == 0)
			return NULL;
		bh = FUNC3(sb, key);
		if (!bh)
			return FUNC2(-EIO);
		if (FUNC7(dentry, FUNC1(sb, bh)->name, toupper))
			return bh;
		key = FUNC8(FUNC1(sb, bh)->hash_chain);
	}
}