#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {int dummy; } ;
struct TYPE_10__ {scalar_t__ dirEntNum; int /*<<< orphan*/  volNumber; } ;
struct ncp_entry_info {TYPE_4__ i; int /*<<< orphan*/  volume; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_3__* d_parent; TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
struct TYPE_11__ {scalar_t__ dirEntNum; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 struct ncp_server* FUNC3 (struct inode*) ; 
 int FUNC4 (struct ncp_server*,struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 
 int FUNC8 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (struct ncp_server*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct ncp_entry_info*) ; 

__attribute__((used)) static int
FUNC15(struct dentry *dentry)
{
	struct ncp_server *server;
	struct dentry *parent;
	struct inode *dir;
	struct ncp_entry_info finfo;
	int res, val = 0, len;
	__u8 __name[NCP_MAXPATHLEN + 1];

	parent = FUNC5(dentry);
	dir = parent->d_inode;

	if (!dentry->d_inode)
		goto finished;

	server = FUNC3(dir);

	if (!FUNC7(server))
		goto finished;

	/*
	 * Inspired by smbfs:
	 * The default validation is based on dentry age:
	 * We set the max age at mount time.  (But each
	 * successful server lookup renews the timestamp.)
	 */
	val = FUNC4(server, dentry);
	if (val)
		goto finished;

	FUNC0("ncp_lookup_validate: %s/%s not valid, age=%ld, server lookup\n",
		dentry->d_parent->d_name.name, dentry->d_name.name,
		FUNC2(dentry));

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
	finfo.volume = finfo.i.volNumber;
	FUNC0("ncp_lookup_validate: looked for %s/%s, res=%d\n",
		dentry->d_parent->d_name.name, __name, res);
	/*
	 * If we didn't find it, or if it has a different dirEntNum to
	 * what we remember, it's not valid any more.
	 */
	if (!res) {
		if (finfo.i.dirEntNum == FUNC1(dentry->d_inode)->dirEntNum) {
			FUNC11(dentry);
			val=1;
		} else
			FUNC0("ncp_lookup_validate: found, but dirEntNum changed\n");

		FUNC14(dentry->d_inode, &finfo);
	}

finished:
	FUNC0("ncp_lookup_validate: result=%d\n", val);
	FUNC6(parent);
	return val;
}