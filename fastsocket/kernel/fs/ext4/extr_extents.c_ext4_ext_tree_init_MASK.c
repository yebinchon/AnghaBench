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
struct inode {int dummy; } ;
struct ext4_extent_header {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_magic; scalar_t__ eh_entries; scalar_t__ eh_depth; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_EXT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 
 struct ext4_extent_header* FUNC4 (struct inode*) ; 

int FUNC5(handle_t *handle, struct inode *inode)
{
	struct ext4_extent_header *eh;

	eh = FUNC4(inode);
	eh->eh_depth = 0;
	eh->eh_entries = 0;
	eh->eh_magic = EXT4_EXT_MAGIC;
	eh->eh_max = FUNC0(FUNC2(inode, 0));
	FUNC3(handle, inode);
	FUNC1(inode);
	return 0;
}