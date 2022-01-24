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
typedef  int /*<<< orphan*/  u64 ;
struct tree_mod_elem {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 struct tree_mod_elem* FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tree_mod_elem *
FUNC1(struct btrfs_fs_info *fs_info, u64 start, u64 min_seq)
{
	return FUNC0(fs_info, start, min_seq, 0);
}