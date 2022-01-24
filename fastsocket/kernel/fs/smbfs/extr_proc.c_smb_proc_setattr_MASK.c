#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct smb_sb_info {int dummy; } ;
struct smb_fattr {int /*<<< orphan*/  attr; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_sb_info* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_sb_info*,struct dentry*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct dentry *dir, struct smb_fattr *fattr)
{
	struct smb_sb_info *server = FUNC2(dir);
	int result;

	FUNC1("setting %s/%s, open=%d\n", 
		FUNC0(dir), FUNC3(dir->d_inode));
	result = FUNC4(server, dir, fattr->attr);
	return result;
}