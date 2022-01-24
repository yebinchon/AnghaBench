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
struct vfsmount {int dummy; } ;
struct kstat {size_t size; } ;
struct ecryptfs_mount_crypt_stat {int flags; } ;
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct ecryptfs_mount_crypt_stat mount_crypt_stat; } ;

/* Variables and functions */
 int ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES ; 
 int FUNC0 (struct dentry*,char**,size_t*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kstat*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct vfsmount *mnt, struct dentry *dentry,
			  struct kstat *stat)
{
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat;
	int rc = 0;

	mount_crypt_stat = &FUNC1(
						dentry->d_sb)->mount_crypt_stat;
	FUNC2(dentry->d_inode, stat);
	if (mount_crypt_stat->flags & ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES) {
		char *target;
		size_t targetsiz;

		rc = FUNC0(dentry, &target, &targetsiz);
		if (!rc) {
			FUNC3(target);
			stat->size = targetsiz;
		}
	}
	return rc;
}