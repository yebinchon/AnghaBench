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
struct super_block {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct inode* FUNC0 (struct super_block*) ; 

__attribute__((used)) static struct inode *FUNC1(struct super_block *sb, int mode)
{
	struct inode *ret = FUNC0(sb);

	if (ret) {
		ret->i_mode = mode;
		ret->i_atime = ret->i_mtime = ret->i_ctime = CURRENT_TIME;
	}
	return ret;
}