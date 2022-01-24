#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_count; int /*<<< orphan*/  s_active; } ;
struct inotify_watch {TYPE_1__* inode; int /*<<< orphan*/  wd; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; int /*<<< orphan*/  idr; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inotify_watch*) ; 
 struct inotify_watch* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sb_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inotify_handle *ih, struct inotify_watch *watch)
{
	struct super_block *sb = watch->inode->i_sb;
	s32 wd = watch->wd;

	if (FUNC0(&sb->s_active)) {
		FUNC3(watch);
		FUNC7(&ih->mutex);
		return 1;	/* the best outcome */
	}
	FUNC8(&sb_lock);
	sb->s_count++;
	FUNC9(&sb_lock);
	FUNC7(&ih->mutex); /* can't grab ->s_umount under it */
	FUNC1(&sb->s_umount);
	if (FUNC5(!sb->s_root)) {
		/* fs is already shut down; the watch is dead */
		FUNC2(sb);
		return 0;
	}
	/* raced with the final deactivate_super() */
	FUNC6(&ih->mutex);
	if (FUNC4(&ih->idr, wd) != watch || watch->inode->i_sb != sb) {
		/* the watch is dead */
		FUNC7(&ih->mutex);
		FUNC2(sb);
		return 0;
	}
	/* still alive or freed and reused with the same sb and wd; kill */
	FUNC3(watch);
	FUNC7(&ih->mutex);
	return 2;
}