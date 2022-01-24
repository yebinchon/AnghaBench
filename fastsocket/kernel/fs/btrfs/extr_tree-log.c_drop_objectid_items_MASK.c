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
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; int type; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct btrfs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

__attribute__((used)) static int FUNC5(struct btrfs_trans_handle *trans,
				  struct btrfs_root *log,
				  struct btrfs_path *path,
				  u64 objectid, int max_key_type)
{
	int ret;
	struct btrfs_key key;
	struct btrfs_key found_key;

	key.objectid = objectid;
	key.type = max_key_type;
	key.offset = (u64)-1;

	while (1) {
		ret = FUNC4(trans, log, &key, path, -1, 1);
		FUNC0(ret == 0);
		if (ret < 0)
			break;

		if (path->slots[0] == 0)
			break;

		path->slots[0]--;
		FUNC2(path->nodes[0], &found_key,
				      path->slots[0]);

		if (found_key.objectid != objectid)
			break;

		ret = FUNC1(trans, log, path);
		if (ret)
			break;
		FUNC3(path);
	}
	FUNC3(path);
	if (ret > 0)
		ret = 0;
	return ret;
}