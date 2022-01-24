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
struct super_block {int s_flags; } ;
struct jffs2_sb_info {int flags; int /*<<< orphan*/  alloc_sem; } ;

/* Variables and functions */
 int EROFS ; 
 int JFFS2_SB_FLAG_RO ; 
 struct jffs2_sb_info* FUNC0 (struct super_block*) ; 
 int MS_NOATIME ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8 (struct super_block *sb, int *flags, char *data)
{
	struct jffs2_sb_info *c = FUNC0(sb);

	if (c->flags & JFFS2_SB_FLAG_RO && !(sb->s_flags & MS_RDONLY))
		return -EROFS;

	/* We stop if it was running, then restart if it needs to.
	   This also catches the case where it was stopped and this
	   is just a remount to restart it.
	   Flush the writebuffer, if neccecary, else we loose it */
	FUNC4();
	if (!(sb->s_flags & MS_RDONLY)) {
		FUNC3(c);
		FUNC5(&c->alloc_sem);
		FUNC1(c);
		FUNC6(&c->alloc_sem);
	}

	if (!(*flags & MS_RDONLY))
		FUNC2(c);

	*flags |= MS_NOATIME;

	FUNC7();
	return 0;
}