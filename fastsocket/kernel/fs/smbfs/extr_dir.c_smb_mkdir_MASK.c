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
struct inode {int dummy; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int SMB_CAP_UNIX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct smb_sb_info* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*) ; 
 int FUNC5 (struct dentry*,struct iattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct dentry *dentry, int mode)
{
	struct smb_sb_info *server = FUNC1(dentry);
	int error;
	struct iattr attr;

	FUNC0();
	FUNC3(dir);
	error = FUNC4(dentry);
	if (!error) {
		if (server->opt.capabilities & SMB_CAP_UNIX) {
			/* Set attributes for new directory */
			attr.ia_valid = ATTR_MODE;
			attr.ia_mode = mode;
			error = FUNC5(dentry, &attr, 0, 0);
		}
		error = FUNC2(dentry, 0, 0);
	}
	FUNC6();
	return error;
}