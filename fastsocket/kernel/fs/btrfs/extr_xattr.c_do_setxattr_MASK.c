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
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 size_t FUNC1 (struct btrfs_root*) ; 
 int EEXIST ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC2 (struct btrfs_dir_item*) ; 
 int FUNC3 (struct btrfs_dir_item*) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 struct btrfs_path* FUNC4 () ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,size_t,void const*,size_t) ; 
 struct btrfs_dir_item* FUNC9 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_path*) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct btrfs_trans_handle *trans,
		       struct inode *inode, const char *name,
		       const void *value, size_t size, int flags)
{
	struct btrfs_dir_item *di;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_path *path;
	size_t name_len = FUNC11(name);
	int ret = 0;

	if (name_len + size > FUNC1(root))
		return -ENOSPC;

	path = FUNC4();
	if (!path)
		return -ENOMEM;

	if (flags & XATTR_REPLACE) {
		di = FUNC9(trans, root, path, FUNC7(inode), name,
					name_len, -1);
		if (FUNC2(di)) {
			ret = FUNC3(di);
			goto out;
		} else if (!di) {
			ret = -ENODATA;
			goto out;
		}
		ret = FUNC5(trans, root, path, di);
		if (ret)
			goto out;
		FUNC10(path);

		/*
		 * remove the attribute
		 */
		if (!value)
			goto out;
	}

again:
	ret = FUNC8(trans, root, path, FUNC7(inode),
				      name, name_len, value, size);
	/*
	 * If we're setting an xattr to a new value but the new value is say
	 * exactly BTRFS_MAX_XATTR_SIZE, we could end up with EOVERFLOW getting
	 * back from split_leaf.  This is because it thinks we'll be extending
	 * the existing item size, but we're asking for enough space to add the
	 * item itself.  So if we get EOVERFLOW just set ret to EEXIST and let
	 * the rest of the function figure it out.
	 */
	if (ret == -EOVERFLOW)
		ret = -EEXIST;

	if (ret == -EEXIST) {
		if (flags & XATTR_CREATE)
			goto out;
		/*
		 * We can't use the path we already have since we won't have the
		 * proper locking for a delete, so release the path and
		 * re-lookup to delete the thing.
		 */
		FUNC10(path);
		di = FUNC9(trans, root, path, FUNC7(inode),
					name, name_len, -1);
		if (FUNC2(di)) {
			ret = FUNC3(di);
			goto out;
		} else if (!di) {
			/* Shouldn't happen but just in case... */
			FUNC10(path);
			goto again;
		}

		ret = FUNC5(trans, root, path, di);
		if (ret)
			goto out;

		/*
		 * We have a value to set, so go back and try to insert it now.
		 */
		if (value) {
			FUNC10(path);
			goto again;
		}
	}
out:
	FUNC6(path);
	return ret;
}