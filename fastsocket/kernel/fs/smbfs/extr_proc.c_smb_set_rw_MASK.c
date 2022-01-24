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
struct smb_fattr {int attr; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* getattr ) (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;} ;

/* Variables and functions */
 int aRONLY ; 
 int /*<<< orphan*/  FUNC0 (struct smb_sb_info*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_sb_info*,struct smb_fattr*) ; 
 int FUNC2 (struct smb_sb_info*,struct dentry*,int) ; 
 int FUNC3 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ; 

__attribute__((used)) static int
FUNC4(struct dentry *dentry,struct smb_sb_info *server)
{
	int result;
	struct smb_fattr fattr;

	/* FIXME: cifsUE should allow removing a readonly file. */

	/* first get current attribute */
	FUNC1(server, &fattr);
	result = server->ops->getattr(server, dentry, &fattr);
	FUNC0(server, &fattr);
	if (result < 0)
		return result;

	/* if RONLY attribute is set, remove it */
	if (fattr.attr & aRONLY) {  /* read only attribute is set */
		fattr.attr &= ~aRONLY;
		result = FUNC2(server, dentry, fattr.attr);
	}
	return result;
}