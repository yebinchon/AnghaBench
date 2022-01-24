#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct inode_security_struct {int /*<<< orphan*/  sclass; int /*<<< orphan*/  sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {struct inode* inode; } ;
struct TYPE_3__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 

__attribute__((used)) static int FUNC6(const struct cred *cred,
			  struct inode *inode,
			  u32 perms,
			  struct common_audit_data *adp)
{
	struct inode_security_struct *isec;
	struct common_audit_data ad;
	u32 sid;

	FUNC5(cred);

	if (FUNC4(FUNC1(inode)))
		return 0;

	sid = FUNC3(cred);
	isec = inode->i_security;

	if (!adp) {
		adp = &ad;
		FUNC0(&ad, FS);
		ad.u.fs.inode = inode;
	}

	return FUNC2(sid, isec->sid, isec->sclass, perms, adp);
}