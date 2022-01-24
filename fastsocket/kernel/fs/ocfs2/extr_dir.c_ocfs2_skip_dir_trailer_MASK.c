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
struct ocfs2_dir_entry {int dummy; } ;
struct ocfs2_dir_block_trailer {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 

__attribute__((used)) static int FUNC1(struct inode *dir,
				  struct ocfs2_dir_entry *de,
				  unsigned long offset,
				  unsigned long blklen)
{
	unsigned long toff = blklen - sizeof(struct ocfs2_dir_block_trailer);

	if (!FUNC0(dir))
		return 0;

	if (offset != toff)
		return 0;

	return 1;
}