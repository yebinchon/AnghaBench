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
struct super_operations {int /*<<< orphan*/  (* put_super ) (struct super_block*) ;} ;
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_instances; int /*<<< orphan*/  s_list; int /*<<< orphan*/  s_id; int /*<<< orphan*/  s_flags; scalar_t__ s_root; struct super_operations* s_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sb_lock ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct super_block *sb)
{
	const struct super_operations *sop = sb->s_op;


	if (sb->s_root) {
		FUNC6(sb);
		FUNC10(sb);
		FUNC0();
		sb->s_flags &= ~MS_ACTIVE;

		/* bad name - it should be evict_inodes() */
		FUNC1(sb, true);

		if (sop->put_super)
			sop->put_super(sb);

		/* Forget any remaining inodes */
		if (FUNC1(sb, true)) {
			FUNC4("VFS: Busy inodes after unmount of %s. "
			   "Self-destruct in 5 seconds.  Have a nice day...\n",
			   sb->s_id);
		}
		FUNC5();
	}
	FUNC7(&sb_lock);
	/* should be initialized for __put_super_and_need_restart() */
	FUNC3(&sb->s_list);
	FUNC2(&sb->s_instances);
	FUNC8(&sb_lock);
	FUNC11(&sb->s_umount);
}