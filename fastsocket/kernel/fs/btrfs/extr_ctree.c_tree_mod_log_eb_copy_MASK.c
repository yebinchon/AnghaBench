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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MOD_LOG_KEY_ADD ; 
 int /*<<< orphan*/  MOD_LOG_KEY_REMOVE ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btrfs_fs_info*,struct extent_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct btrfs_fs_info *fs_info, struct extent_buffer *dst,
		     struct extent_buffer *src, unsigned long dst_offset,
		     unsigned long src_offset, int nr_items)
{
	int ret;
	int i;

	if (FUNC2(fs_info, NULL))
		return;

	if (FUNC1(dst) == 0 && FUNC1(src) == 0)
		return;

	/* speed this up by single seq for all operations? */
	for (i = 0; i < nr_items; i++) {
		ret = FUNC3(fs_info, src, i + src_offset,
					      MOD_LOG_KEY_REMOVE);
		FUNC0(ret < 0);
		ret = FUNC3(fs_info, dst, i + dst_offset,
					      MOD_LOG_KEY_ADD);
		FUNC0(ret < 0);
	}
}