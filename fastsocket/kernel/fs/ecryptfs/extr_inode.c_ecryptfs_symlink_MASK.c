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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct TYPE_2__ {struct ecryptfs_mount_crypt_stat mount_crypt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *,struct ecryptfs_mount_crypt_stat*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct dentry* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct dentry*,char*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry,
			    const char *symname)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;
	char *encoded_symname;
	size_t encoded_symlen;
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat = NULL;

	lower_dentry = FUNC3(dentry);
	FUNC1(lower_dentry);
	lower_dir_dentry = FUNC10(lower_dentry);
	mount_crypt_stat = &FUNC6(
		dir->i_sb)->mount_crypt_stat;
	rc = FUNC4(&encoded_symname,
						  &encoded_symlen,
						  NULL,
						  mount_crypt_stat, symname,
						  FUNC11(symname));
	if (rc)
		goto out_lock;
	rc = FUNC13(lower_dir_dentry->d_inode, lower_dentry,
			 encoded_symname);
	FUNC9(encoded_symname);
	if (rc || !lower_dentry->d_inode)
		goto out_lock;
	rc = FUNC5(lower_dentry, dentry, dir->i_sb, 0);
	if (rc)
		goto out_lock;
	FUNC7(dir, lower_dir_dentry->d_inode);
	FUNC8(dir, lower_dir_dentry->d_inode);
out_lock:
	FUNC12(lower_dir_dentry);
	FUNC2(lower_dentry);
	if (!dentry->d_inode)
		FUNC0(dentry);
	return rc;
}