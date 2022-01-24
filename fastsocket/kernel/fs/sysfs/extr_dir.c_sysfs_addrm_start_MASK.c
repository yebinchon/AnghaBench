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
struct sysfs_dirent {int /*<<< orphan*/  s_ino; } ;
struct sysfs_addrm_cxt {struct inode* parent_inode; struct sysfs_dirent* parent_sd; } ;
struct inode {int i_state; int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int I_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysfs_addrm_cxt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_ilookup_test ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  sysfs_sb ; 

void FUNC6(struct sysfs_addrm_cxt *acxt,
		       struct sysfs_dirent *parent_sd)
{
	struct inode *inode;

	FUNC2(acxt, 0, sizeof(*acxt));
	acxt->parent_sd = parent_sd;

	/* Lookup parent inode.  inode initialization is protected by
	 * sysfs_mutex, so inode existence can be determined by
	 * looking up inode while holding sysfs_mutex.
	 */
	FUNC3(&sysfs_mutex);

	inode = FUNC1(sysfs_sb, parent_sd->s_ino, sysfs_ilookup_test,
			 parent_sd);
	if (inode) {
		FUNC0(inode->i_state & I_NEW);

		/* parent inode available */
		acxt->parent_inode = inode;

		/* sysfs_mutex is below i_mutex in lock hierarchy.
		 * First, trylock i_mutex.  If fails, unlock
		 * sysfs_mutex and lock them in order.
		 */
		if (!FUNC4(&inode->i_mutex)) {
			FUNC5(&sysfs_mutex);
			FUNC3(&inode->i_mutex);
			FUNC3(&sysfs_mutex);
		}
	}
}