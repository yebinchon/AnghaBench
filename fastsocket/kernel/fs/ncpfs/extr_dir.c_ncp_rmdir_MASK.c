#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 
 int FUNC5 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct ncp_server *server = FUNC1(dir);
	int error, result, len;
	__u8 __name[NCP_MAXPATHLEN + 1];

	FUNC0("ncp_rmdir: removing %s/%s\n",
		dentry->d_parent->d_name.name, dentry->d_name.name);

	error = -EIO;
	FUNC3();
	if (!FUNC4(server))
		goto out;

	error = -EBUSY;
	if (!FUNC2(dentry))
		goto out;

	len = sizeof(__name);
	error = FUNC6(server, __name, &len, dentry->d_name.name,
			   dentry->d_name.len, !FUNC7(dir));
	if (error)
		goto out;

	result = FUNC5(server, dir, __name);
	switch (result) {
		case 0x00:
			error = 0;
			break;
		case 0x85:	/* unauthorized to delete file */
		case 0x8A:	/* unauthorized to delete file */
			error = -EACCES;
			break;
		case 0x8F:
		case 0x90:	/* read only */
			error = -EPERM;
			break;
		case 0x9F:	/* in use by another client */
			error = -EBUSY;
			break;
		case 0xA0:	/* directory not empty */
			error = -ENOTEMPTY;
			break;
		case 0xFF:	/* someone deleted file */
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