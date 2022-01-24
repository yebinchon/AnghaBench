#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  volNumber; } ;
struct ncp_entry_info {TYPE_4__ i; int /*<<< orphan*/  volume; int /*<<< orphan*/  ino; scalar_t__ opened; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_3__* d_parent; TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*) ; 
 int /*<<< orphan*/  ncp_dentry_operations ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct ncp_entry_info*) ; 
 int FUNC8 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (struct ncp_server*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static struct dentry *FUNC15(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct ncp_server *server = FUNC1(dir);
	struct inode *inode = NULL;
	struct ncp_entry_info finfo;
	int error, res, len;
	__u8 __name[NCP_MAXPATHLEN + 1];

	FUNC5();
	error = -EIO;
	if (!FUNC6(server))
		goto finished;

	FUNC2("ncp_lookup: server lookup for %s/%s\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);

	len = sizeof(__name);
	if (FUNC9(dir)) {
		res = FUNC8(server, __name, &len, dentry->d_name.name,
				 dentry->d_name.len, 1);
		if (!res)
			res = FUNC10(server, __name, &(finfo.i));
	} else {
		res = FUNC8(server, __name, &len, dentry->d_name.name,
				 dentry->d_name.len, !FUNC13(dir));
		if (!res)
			res = FUNC12(server, dir, __name, &(finfo.i));
	}
	FUNC2("ncp_lookup: looked for %s/%s, res=%d\n",
		dentry->d_parent->d_name.name, __name, res);
	/*
	 * If we didn't find an entry, make a negative dentry.
	 */
	if (res)
		goto add_entry;

	/*
	 * Create an inode for the entry.
	 */
	finfo.opened = 0;
	finfo.ino = FUNC4(dir->i_sb, 2);
	finfo.volume = finfo.i.volNumber;
	error = -EACCES;
	inode = FUNC7(dir->i_sb, &finfo);

	if (inode) {
		FUNC11(dentry);
add_entry:
		dentry->d_op = &ncp_dentry_operations;
		FUNC3(dentry, inode);
		error = 0;
	}

finished:
	FUNC2("ncp_lookup: result=%d\n", error);
	FUNC14();
	return FUNC0(error);
}