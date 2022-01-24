#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_info {int name_index; char const* name; void const* value; size_t value_len; } ;
struct TYPE_10__ {int /*<<< orphan*/ * bh; } ;
struct TYPE_9__ {scalar_t__ not_found; } ;
struct ext4_xattr_ibody_find {TYPE_3__ iloc; TYPE_2__ s; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; scalar_t__ not_found; } ;
struct ext4_xattr_block_find {int /*<<< orphan*/ * bh; TYPE_1__ s; } ;
struct ext4_inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_11__ {int /*<<< orphan*/  s_inode_size; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOSPC ; 
 int ERANGE ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_NEW ; 
 int /*<<< orphan*/  EXT4_STATE_NO_EXPAND ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,TYPE_3__*) ; 
 struct ext4_inode* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 long FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ; 
 int FUNC16 (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ext4_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int
FUNC22(handle_t *handle, struct inode *inode, int name_index,
		      const char *name, const void *value, size_t value_len,
		      int flags)
{
	struct ext4_xattr_info i = {
		.name_index = name_index,
		.name = name,
		.value = value,
		.value_len = value_len,

	};
	struct ext4_xattr_ibody_find is = {
		.s = { .not_found = -ENODATA, },
	};
	struct ext4_xattr_block_find bs = {
		.s = { .not_found = -ENODATA, },
	};
	unsigned long no_expand;
	int error;

	if (!name)
		return -EINVAL;
	if (FUNC20(name) > 255)
		return -ERANGE;
	FUNC4(&FUNC0(inode)->xattr_sem);
	no_expand = FUNC13(inode, EXT4_STATE_NO_EXPAND);
	FUNC12(inode, EXT4_STATE_NO_EXPAND);

	error = FUNC7(inode, &is.iloc);
	if (error)
		goto cleanup;

	error = FUNC9(handle, is.iloc.bh);
	if (error)
		goto cleanup;

	if (FUNC13(inode, EXT4_STATE_NEW)) {
		struct ext4_inode *raw_inode = FUNC11(&is.iloc);
		FUNC19(raw_inode, 0, FUNC1(inode->i_sb)->s_inode_size);
		FUNC5(inode, EXT4_STATE_NEW);
	}

	error = FUNC16(inode, &i, &is);
	if (error)
		goto cleanup;
	if (is.s.not_found)
		error = FUNC14(inode, &i, &bs);
	if (error)
		goto cleanup;
	if (is.s.not_found && bs.s.not_found) {
		error = -ENODATA;
		if (flags & XATTR_REPLACE)
			goto cleanup;
		error = 0;
		if (!value)
			goto cleanup;
	} else {
		error = -EEXIST;
		if (flags & XATTR_CREATE)
			goto cleanup;
	}
	if (!value) {
		if (!is.s.not_found)
			error = FUNC17(handle, inode, &i, &is);
		else if (!bs.s.not_found)
			error = FUNC15(handle, inode, &i, &bs);
	} else {
		error = FUNC17(handle, inode, &i, &is);
		if (!error && !bs.s.not_found) {
			i.value = NULL;
			error = FUNC15(handle, inode, &i, &bs);
		} else if (error == -ENOSPC) {
			if (FUNC0(inode)->i_file_acl && !bs.s.base) {
				error = FUNC14(inode, &i, &bs);
				if (error)
					goto cleanup;
			}
			error = FUNC15(handle, inode, &i, &bs);
			if (error)
				goto cleanup;
			if (!is.s.not_found) {
				i.value = NULL;
				error = FUNC17(handle, inode, &i,
							     &is);
			}
		}
	}
	if (!error) {
		FUNC18(handle, inode->i_sb);
		inode->i_ctime = FUNC6(inode);
		if (!value)
			FUNC5(inode, EXT4_STATE_NO_EXPAND);
		error = FUNC10(handle, inode, &is.iloc);
		/*
		 * The bh is consumed by ext4_mark_iloc_dirty, even with
		 * error != 0.
		 */
		is.iloc.bh = NULL;
		if (FUNC2(inode))
			FUNC8(handle);
	}

cleanup:
	FUNC3(is.iloc.bh);
	FUNC3(bs.bh);
	if (no_expand == 0)
		FUNC5(inode, EXT4_STATE_NO_EXPAND);
	FUNC21(&FUNC0(inode)->xattr_sem);
	return error;
}