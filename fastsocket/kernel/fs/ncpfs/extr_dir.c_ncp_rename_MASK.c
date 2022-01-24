#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
struct ncp_server {TYPE_3__ m; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_4__ d_name; TYPE_2__* d_parent; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __old_name ;
typedef  int /*<<< orphan*/  __new_name ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int EACCES ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 int NCP_MOUNT_STRONG ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 
 int FUNC5 (struct inode*,struct dentry*,int /*<<< orphan*/ *,struct inode*,struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry)
{
	struct ncp_server *server = FUNC1(old_dir);
	int error;
	int old_len, new_len;
	__u8 __old_name[NCP_MAXPATHLEN + 1], __new_name[NCP_MAXPATHLEN + 1];

	FUNC0("ncp_rename: %s/%s to %s/%s\n",
		old_dentry->d_parent->d_name.name, old_dentry->d_name.name,
		new_dentry->d_parent->d_name.name, new_dentry->d_name.name);

	error = -EIO;
	FUNC2();
	if (!FUNC4(server))
		goto out;

	FUNC3(server, old_dentry);
	FUNC3(server, new_dentry);

	old_len = sizeof(__old_name);
	error = FUNC6(server, __old_name, &old_len,
			   old_dentry->d_name.name, old_dentry->d_name.len,
			   !FUNC7(old_dir));
	if (error)
		goto out;

	new_len = sizeof(__new_name);
	error = FUNC6(server, __new_name, &new_len,
			   new_dentry->d_name.name, new_dentry->d_name.len,
			   !FUNC7(new_dir));
	if (error)
		goto out;

	error = FUNC8(server, old_dir, __old_name,
						      new_dir, __new_name);
#ifdef CONFIG_NCPFS_STRONG
	if ((error == 0x90 || error == 0x8B || error == -EACCES) &&
			server->m.flags & NCP_MOUNT_STRONG) {	/* RO */
		error = ncp_force_rename(old_dir, old_dentry, __old_name,
					 new_dir, new_dentry, __new_name);
	}
#endif
	switch (error) {
		case 0x00:
               	        FUNC0("ncp renamed %s -> %s.\n",
                                old_dentry->d_name.name,new_dentry->d_name.name);
			break;
		case 0x9E:
			error = -ENAMETOOLONG;
			break;
		case 0xFF:
			error = -ENOENT;
			break;
		default:
			error = -EACCES;
			break;
	}
out:
	FUNC9();
	return error;
}