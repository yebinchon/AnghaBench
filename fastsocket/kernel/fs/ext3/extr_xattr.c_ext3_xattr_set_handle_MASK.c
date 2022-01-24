#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct ext3_xattr_info {int name_index; char const* name; void const* value; size_t value_len; } ;
struct TYPE_20__ {int /*<<< orphan*/ * bh; } ;
struct TYPE_18__ {scalar_t__ not_found; } ;
struct ext3_xattr_ibody_find {TYPE_8__ iloc; TYPE_2__ s; } ;
struct TYPE_17__ {int /*<<< orphan*/  base; scalar_t__ not_found; } ;
struct ext3_xattr_block_find {int /*<<< orphan*/ * bh; TYPE_1__ s; } ;
struct ext3_inode {int dummy; } ;
struct TYPE_19__ {int h_sync; } ;
typedef  TYPE_3__ handle_t ;
struct TYPE_16__ {int i_state; int /*<<< orphan*/  xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_15__ {int /*<<< orphan*/  s_inode_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOSPC ; 
 int ERANGE ; 
 TYPE_14__* FUNC0 (struct inode*) ; 
 TYPE_13__* FUNC1 (int /*<<< orphan*/ ) ; 
 int EXT3_STATE_NEW ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,TYPE_8__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,struct inode*,TYPE_8__*) ; 
 struct ext3_inode* FUNC8 (TYPE_8__*) ; 
 int FUNC9 (struct inode*,struct ext3_xattr_info*,struct ext3_xattr_block_find*) ; 
 int FUNC10 (TYPE_3__*,struct inode*,struct ext3_xattr_info*,struct ext3_xattr_block_find*) ; 
 int FUNC11 (struct inode*,struct ext3_xattr_info*,struct ext3_xattr_ibody_find*) ; 
 int FUNC12 (TYPE_3__*,struct inode*,struct ext3_xattr_info*,struct ext3_xattr_ibody_find*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ext3_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int
FUNC17(handle_t *handle, struct inode *inode, int name_index,
		      const char *name, const void *value, size_t value_len,
		      int flags)
{
	struct ext3_xattr_info i = {
		.name_index = name_index,
		.name = name,
		.value = value,
		.value_len = value_len,

	};
	struct ext3_xattr_ibody_find is = {
		.s = { .not_found = -ENODATA, },
	};
	struct ext3_xattr_block_find bs = {
		.s = { .not_found = -ENODATA, },
	};
	int error;

	if (!name)
		return -EINVAL;
	if (FUNC15(name) > 255)
		return -ERANGE;
	FUNC4(&FUNC0(inode)->xattr_sem);
	error = FUNC5(inode, &is.iloc);
	if (error)
		goto cleanup;

	error = FUNC6(handle, is.iloc.bh);
	if (error)
		goto cleanup;

	if (FUNC0(inode)->i_state & EXT3_STATE_NEW) {
		struct ext3_inode *raw_inode = FUNC8(&is.iloc);
		FUNC14(raw_inode, 0, FUNC1(inode->i_sb)->s_inode_size);
		FUNC0(inode)->i_state &= ~EXT3_STATE_NEW;
	}

	error = FUNC11(inode, &i, &is);
	if (error)
		goto cleanup;
	if (is.s.not_found)
		error = FUNC9(inode, &i, &bs);
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
			error = FUNC12(handle, inode, &i, &is);
		else if (!bs.s.not_found)
			error = FUNC10(handle, inode, &i, &bs);
	} else {
		error = FUNC12(handle, inode, &i, &is);
		if (!error && !bs.s.not_found) {
			i.value = NULL;
			error = FUNC10(handle, inode, &i, &bs);
		} else if (error == -ENOSPC) {
			if (FUNC0(inode)->i_file_acl && !bs.s.base) {
				error = FUNC9(inode, &i, &bs);
				if (error)
					goto cleanup;
			}
			error = FUNC10(handle, inode, &i, &bs);
			if (error)
				goto cleanup;
			if (!is.s.not_found) {
				i.value = NULL;
				error = FUNC12(handle, inode, &i,
							     &is);
			}
		}
	}
	if (!error) {
		FUNC13(handle, inode->i_sb);
		inode->i_ctime = CURRENT_TIME_SEC;
		error = FUNC7(handle, inode, &is.iloc);
		/*
		 * The bh is consumed by ext3_mark_iloc_dirty, even with
		 * error != 0.
		 */
		is.iloc.bh = NULL;
		if (FUNC2(inode))
			handle->h_sync = 1;
	}

cleanup:
	FUNC3(is.iloc.bh);
	FUNC3(bs.bh);
	FUNC16(&FUNC0(inode)->xattr_sem);
	return error;
}