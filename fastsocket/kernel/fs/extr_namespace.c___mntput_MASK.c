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
struct vfsmount {int /*<<< orphan*/  mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*) ; 

__attribute__((used)) static inline void FUNC5(struct vfsmount *mnt)
{
	struct super_block *sb = mnt->mnt_sb;
	/*
	 * This probably indicates that somebody messed
	 * up a mnt_want/drop_write() pair.  If this
	 * happens, the filesystem was probably unable
	 * to make r/w->r/o transitions.
	 */
	/*
	 * atomic_dec_and_lock() used to deal with ->mnt_count decrements
	 * provides barriers, so count_mnt_writers() below is safe.  AV
	 */
	FUNC0(FUNC1(mnt));
	FUNC3(mnt->mnt_root);
	FUNC4(mnt);
	FUNC2(sb);
}