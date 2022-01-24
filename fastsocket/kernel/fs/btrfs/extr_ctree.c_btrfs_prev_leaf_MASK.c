#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ offset; scalar_t__ type; scalar_t__ objectid; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_disk_key*,struct btrfs_key*) ; 

int FUNC5(struct btrfs_root *root, struct btrfs_path *path)
{
	struct btrfs_key key;
	struct btrfs_disk_key found_key;
	int ret;

	FUNC1(path->nodes[0], &key, 0);

	if (key.offset > 0)
		key.offset--;
	else if (key.type > 0)
		key.type--;
	else if (key.objectid > 0)
		key.objectid--;
	else
		return 1;

	FUNC2(path);
	ret = FUNC3(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		return ret;
	FUNC0(path->nodes[0], &found_key, 0);
	ret = FUNC4(&found_key, &key);
	if (ret < 0)
		return 0;
	return 1;
}