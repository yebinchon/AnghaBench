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
struct TYPE_5__ {int flags; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 int EPERM ; 
 int NCP_MOUNT_STRONG ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 
 int FUNC5 (struct ncp_server*,struct dentry*) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct ncp_server *server;
	int error;

	FUNC3();
	server = FUNC1(dir);
	FUNC0("ncp_unlink: unlinking %s/%s\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);
	
	error = -EIO;
	if (!FUNC4(server))
		goto out;

	/*
	 * Check whether to close the file ...
	 */
	if (inode) {
		FUNC2("ncp_unlink: closing file\n");
		FUNC7(inode);
	}

	error = FUNC5(server, dentry);
#ifdef CONFIG_NCPFS_STRONG
	/* 9C is Invalid path.. It should be 8F, 90 - read only, but
	   it is not :-( */
	if ((error == 0x9C || error == 0x90) && server->m.flags & NCP_MOUNT_STRONG) { /* R/O */
		error = ncp_force_unlink(dir, dentry);
	}
#endif
	switch (error) {
		case 0x00:
			FUNC0("ncp: removed %s/%s\n",
				dentry->d_parent->d_name.name, dentry->d_name.name);
			break;
		case 0x85:
		case 0x8A:
			error = -EACCES;
			break;
		case 0x8D:	/* some files in use */
		case 0x8E:	/* all files in use */
			error = -EBUSY;
			break;
		case 0x8F:	/* some read only */
		case 0x90:	/* all read only */
		case 0x9C:	/* !!! returned when in-use or read-only by NW4 */
			error = -EPERM;
			break;
		case 0xFF:
			error = -ENOENT;
			break;
		default:
			error = -EACCES;
			break;
	}
		
out:
	FUNC8();
	return error;
}