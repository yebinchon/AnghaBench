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
struct smb_sb_info {TYPE_1__* ops; } ;
struct smb_fattr {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* getattr ) (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;} ;

/* Variables and functions */
 struct smb_sb_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_sb_info*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_sb_info*,struct smb_fattr*) ; 
 int FUNC3 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ; 

int
FUNC4(struct dentry *dir, struct smb_fattr *fattr)
{
	struct smb_sb_info *server = FUNC0(dir);
	int result;

	FUNC2(server, fattr);
	result = server->ops->getattr(server, dir, fattr);
	FUNC1(server, fattr);

	return result;
}