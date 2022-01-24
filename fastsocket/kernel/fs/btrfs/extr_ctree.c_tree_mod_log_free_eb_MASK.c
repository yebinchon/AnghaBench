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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MOD_LOG_KEY_REMOVE_WHILE_FREEING ; 
 int FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct btrfs_fs_info*,struct extent_buffer*) ; 
 int FUNC3 (struct btrfs_fs_info*,struct extent_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info,
				 struct extent_buffer *eb)
{
	int i;
	int ret;
	u32 nritems;

	if (FUNC2(fs_info, eb))
		return;

	nritems = FUNC1(eb);
	for (i = nritems - 1; i >= 0; i--) {
		ret = FUNC3(fs_info, eb, i,
					      MOD_LOG_KEY_REMOVE_WHILE_FREEING);
		FUNC0(ret < 0);
	}
}