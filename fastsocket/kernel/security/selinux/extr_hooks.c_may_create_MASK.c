#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct task_security_struct {int /*<<< orphan*/  create_sid; int /*<<< orphan*/  sid; } ;
struct superblock_security_struct {int flags; int /*<<< orphan*/  sid; } ;
struct inode_security_struct {int /*<<< orphan*/  sid; } ;
struct inode {TYPE_1__* i_sb; struct inode_security_struct* i_security; } ;
struct dentry {int dummy; } ;
struct cred {struct task_security_struct* security; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct TYPE_7__ {TYPE_2__ path; } ;
struct TYPE_8__ {TYPE_3__ fs; } ;
struct common_audit_data {TYPE_4__ u; } ;
struct TYPE_5__ {struct superblock_security_struct* s_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int DIR__ADD_NAME ; 
 int DIR__SEARCH ; 
 int FILESYSTEM__ASSOCIATE ; 
 int FILE__CREATE ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  SECCLASS_DIR ; 
 int /*<<< orphan*/  SECCLASS_FILESYSTEM ; 
 int SE_SBLABELSUPP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct common_audit_data*) ; 
 struct cred* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *dir,
		      struct dentry *dentry,
		      u16 tclass)
{
	const struct cred *cred = FUNC2();
	const struct task_security_struct *tsec = cred->security;
	struct inode_security_struct *dsec;
	struct superblock_security_struct *sbsec;
	u32 sid, newsid;
	struct common_audit_data ad;
	int rc;

	dsec = dir->i_security;
	sbsec = dir->i_sb->s_security;

	sid = tsec->sid;
	newsid = tsec->create_sid;

	FUNC0(&ad, FS);
	ad.u.fs.path.dentry = dentry;

	rc = FUNC1(sid, dsec->sid, SECCLASS_DIR,
			  DIR__ADD_NAME | DIR__SEARCH,
			  &ad);
	if (rc)
		return rc;

	if (!newsid || !(sbsec->flags & SE_SBLABELSUPP)) {
		rc = FUNC3(sid, dsec->sid, tclass, &newsid);
		if (rc)
			return rc;
	}

	rc = FUNC1(sid, newsid, tclass, FILE__CREATE, &ad);
	if (rc)
		return rc;

	return FUNC1(newsid, sbsec->sid,
			    SECCLASS_FILESYSTEM,
			    FILESYSTEM__ASSOCIATE, &ad);
}