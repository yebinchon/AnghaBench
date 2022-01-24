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
struct super_block {unsigned long s_flags; } ;
struct pohmelfs_sb {int dummy; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 struct pohmelfs_sb* FUNC0 (struct super_block*) ; 
 int FUNC1 (char*,struct pohmelfs_sb*,int) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct pohmelfs_sb *psb = FUNC0(sb);
	unsigned long old_sb_flags = sb->s_flags;

	err = FUNC1(data, psb, 1);
	if (err)
		goto err_out_restore;

	if (!(*flags & MS_RDONLY))
		sb->s_flags &= ~MS_RDONLY;
	return 0;

err_out_restore:
	sb->s_flags = old_sb_flags;
	return err;
}