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
struct TYPE_2__ {int capabilities; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int SMB_CAP_UNIX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct smb_sb_info* FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct dentry*,struct iattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct inode *dir, struct dentry *dentry, int mode,
		struct nameidata *nd)
{
	struct smb_sb_info *server = FUNC5(dentry);
	__u16 fileid;
	int error;
	struct iattr attr;

	FUNC2("creating %s/%s, mode=%d\n", FUNC0(dentry), mode);

	FUNC4();
	FUNC7(dir);
	error = FUNC8(dentry, 0, FUNC3(), &fileid);
	if (!error) {
		if (server->opt.capabilities & SMB_CAP_UNIX) {
			/* Set attributes for new file */
			attr.ia_valid = ATTR_MODE;
			attr.ia_mode = mode;
			error = FUNC9(dentry, &attr, 0, 0);
		}
		error = FUNC6(dentry, fileid, 1);
	} else {
		FUNC1("%s/%s failed, error=%d\n",
			 FUNC0(dentry), error);
	}
	FUNC10();
	return error;
}