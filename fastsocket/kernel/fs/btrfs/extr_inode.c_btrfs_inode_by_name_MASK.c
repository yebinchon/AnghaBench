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
struct inode {int dummy; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct btrfs_dir_item*) ; 
 scalar_t__ FUNC2 (struct btrfs_dir_item*) ; 
 int FUNC3 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct btrfs_dir_item* FUNC8 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry,
			       struct btrfs_key *location)
{
	const char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct btrfs_dir_item *di;
	struct btrfs_path *path;
	struct btrfs_root *root = FUNC0(dir)->root;
	int ret = 0;

	path = FUNC4();
	if (!path)
		return -ENOMEM;

	di = FUNC8(NULL, root, path, FUNC7(dir), name,
				    namelen, 0);
	if (FUNC1(di))
		ret = FUNC3(di);

	if (FUNC2(di))
		goto out_err;

	FUNC5(path->nodes[0], di, location);
out:
	FUNC6(path);
	return ret;
out_err:
	location->objectid = 0;
	goto out;
}