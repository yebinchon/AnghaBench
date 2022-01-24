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
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct extent_buffer *FUNC2(struct btrfs_root *root, u64 bytenr,
				      u32 blocksize, u64 parent_transid)
{
	struct extent_buffer *buf = NULL;
	int ret;

	buf = FUNC1(root, bytenr, blocksize);
	if (!buf)
		return NULL;

	ret = FUNC0(root, buf, 0, parent_transid);
	return buf;

}