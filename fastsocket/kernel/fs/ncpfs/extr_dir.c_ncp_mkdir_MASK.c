#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {int dummy; } ;
struct TYPE_9__ {int mode; } ;
struct TYPE_10__ {int /*<<< orphan*/  dirEntNum; TYPE_4__ nfs; } ;
struct ncp_entry_info {TYPE_5__ i; int /*<<< orphan*/  volume; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EIO ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OC_MODE_CREATE ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  aDIR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 int FUNC6 (struct inode*,struct dentry*,struct ncp_entry_info*) ; 
 int FUNC7 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ncp_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ncp_entry_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry, int mode)
{
	struct ncp_entry_info finfo;
	struct ncp_server *server = FUNC1(dir);
	int error, len;
	__u8 __name[NCP_MAXPATHLEN + 1];

	FUNC0("ncp_mkdir: making %s/%s\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);

	error = -EIO;
	FUNC3();
	if (!FUNC5(server))
		goto out;

	FUNC4(server, dentry);
	len = sizeof(__name);
	error = FUNC7(server, __name, &len, dentry->d_name.name,
			   dentry->d_name.len, !FUNC11(dir));
	if (error)
		goto out;

	error = -EACCES;
	if (FUNC10(server, dir, __name,
					   OC_MODE_CREATE, aDIR,
					   FUNC2(0xffff),
					   &finfo) == 0)
	{
		if (FUNC8(server, finfo.volume)) {
			mode |= S_IFDIR;
			finfo.i.nfs.mode = mode;
			if (FUNC9(server,
						finfo.volume,
						finfo.i.dirEntNum,
						mode, 0) != 0)
				goto out;
		}
		error = FUNC6(dir, dentry, &finfo);
	}
out:
	FUNC12();
	return error;
}