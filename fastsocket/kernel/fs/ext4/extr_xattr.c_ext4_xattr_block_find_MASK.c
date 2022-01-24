#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct ext4_xattr_info {int /*<<< orphan*/  name; int /*<<< orphan*/  name_index; scalar_t__ value_len; int /*<<< orphan*/  value; } ;
struct TYPE_9__ {int not_found; int /*<<< orphan*/  here; int /*<<< orphan*/  first; scalar_t__ end; TYPE_6__* base; } ;
struct ext4_xattr_block_find {TYPE_1__ s; TYPE_2__* bh; } ;
struct TYPE_12__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;
struct TYPE_10__ {scalar_t__ b_size; scalar_t__ b_data; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 int EIO ; 
 int ENODATA ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(struct inode *inode, struct ext4_xattr_info *i,
		      struct ext4_xattr_block_find *bs)
{
	struct super_block *sb = inode->i_sb;
	int error;

	FUNC5(inode, "name=%d.%s, value=%p, value_len=%ld",
		  i->name_index, i->name, i->value, (long)i->value_len);

	if (FUNC2(inode)->i_file_acl) {
		/* The inode already has an extended attribute block. */
		bs->bh = FUNC10(sb, FUNC2(inode)->i_file_acl);
		error = -EIO;
		if (!bs->bh)
			goto cleanup;
		FUNC4(bs->bh, "b_count=%d, refcount=%d",
			FUNC3(&(bs->bh->b_count)),
			FUNC9(FUNC1(bs->bh)->h_refcount));
		if (FUNC7(bs->bh)) {
			FUNC6(sb, "inode %lu: bad block %llu",
				   inode->i_ino, FUNC2(inode)->i_file_acl);
			error = -EIO;
			goto cleanup;
		}
		/* Find the named attribute. */
		bs->s.base = FUNC1(bs->bh);
		bs->s.first = FUNC0(bs->bh);
		bs->s.end = bs->bh->b_data + bs->bh->b_size;
		bs->s.here = bs->s.first;
		error = FUNC8(&bs->s.here, i->name_index,
					      i->name, bs->bh->b_size, 1);
		if (error && error != -ENODATA)
			goto cleanup;
		bs->s.not_found = error;
	}
	error = 0;

cleanup:
	return error;
}