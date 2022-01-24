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
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  MOD_LOG_KEY_REPLACE ; 
 int FUNC1 (struct btrfs_fs_info*,struct extent_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct btrfs_fs_info *fs_info,
			  struct extent_buffer *eb,
			  struct btrfs_disk_key *disk_key, int slot, int atomic)
{
	int ret;

	ret = FUNC1(fs_info, eb, slot,
					   MOD_LOG_KEY_REPLACE,
					   atomic ? GFP_ATOMIC : GFP_NOFS);
	FUNC0(ret < 0);
}