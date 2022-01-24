#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
struct ncp_server {TYPE_1__ m; } ;
struct TYPE_11__ {int mode; int /*<<< orphan*/  rdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  dirEntNum; TYPE_5__ nfs; } ;
struct ncp_entry_info {int access; TYPE_6__ i; int /*<<< orphan*/  volume; } ;
struct inode {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
typedef  int __le32 ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int AR_READ ; 
 int AR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 int NCP_MOUNT_EXTRAS ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int OC_MODE_CREATE ; 
 int OC_MODE_OPEN ; 
 int OC_MODE_REPLACE ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_IXUGO ; 
 int aSHARED ; 
 int aSYSTEM ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*) ; 
 int FUNC7 (struct inode*,struct dentry*,struct ncp_entry_info*) ; 
 int FUNC8 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ncp_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,int,int,int,struct ncp_entry_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(struct inode *dir, struct dentry *dentry, int mode,
		   dev_t rdev, __le32 attributes)
{
	struct ncp_server *server = FUNC1(dir);
	struct ncp_entry_info finfo;
	int error, result, len;
	int opmode;
	__u8 __name[NCP_MAXPATHLEN + 1];
	
	FUNC2("ncp_create_new: creating %s/%s, mode=%x\n",
		dentry->d_parent->d_name.name, dentry->d_name.name, mode);

	error = -EIO;
	FUNC4();
	if (!FUNC6(server))
		goto out;

	FUNC5(server, dentry);
	len = sizeof(__name);
	error = FUNC8(server, __name, &len, dentry->d_name.name,
			   dentry->d_name.len, !FUNC12(dir));
	if (error)
		goto out;

	error = -EACCES;
	
	if (FUNC3(mode) && 
	    (server->m.flags & NCP_MOUNT_EXTRAS) && 
	    (mode & S_IXUGO))
		attributes |= aSYSTEM | aSHARED;
	
	result = FUNC11(server, dir, __name,
				OC_MODE_CREATE | OC_MODE_OPEN | OC_MODE_REPLACE,
				attributes, AR_READ | AR_WRITE, &finfo);
	opmode = O_RDWR;
	if (result) {
		result = FUNC11(server, dir, __name,
				OC_MODE_CREATE | OC_MODE_OPEN | OC_MODE_REPLACE,
				attributes, AR_WRITE, &finfo);
		if (result) {
			if (result == 0x87)
				error = -ENAMETOOLONG;
			FUNC0("ncp_create: %s/%s failed\n",
				dentry->d_parent->d_name.name, dentry->d_name.name);
			goto out;
		}
		opmode = O_WRONLY;
	}
	finfo.access = opmode;
	if (FUNC9(server, finfo.volume)) {
		finfo.i.nfs.mode = mode;
		finfo.i.nfs.rdev = FUNC13(rdev);
		if (FUNC10(server, finfo.volume,
					finfo.i.dirEntNum,
					mode, FUNC13(rdev)) != 0)
			goto out;
	}

	error = FUNC7(dir, dentry, &finfo);
out:
	FUNC14();
	return error;
}