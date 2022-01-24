#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {scalar_t__ sid; scalar_t__ osid; scalar_t__ exec_sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; } ;
struct linux_binprm {int unsafe; int /*<<< orphan*/  per_clear; TYPE_7__* file; TYPE_2__* cred; scalar_t__ cred_prepared; } ;
struct inode_security_struct {scalar_t__ sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct TYPE_14__ {TYPE_5__* mnt; TYPE_1__* dentry; } ;
struct TYPE_11__ {TYPE_6__ path; } ;
struct TYPE_12__ {TYPE_3__ fs; } ;
struct common_audit_data {TYPE_4__ u; } ;
struct TYPE_16__ {struct task_security_struct* security; } ;
struct TYPE_15__ {TYPE_6__ f_path; } ;
struct TYPE_13__ {int mnt_flags; } ;
struct TYPE_10__ {struct task_security_struct* security; } ;
struct TYPE_9__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int /*<<< orphan*/  FILE__ENTRYPOINT ; 
 int /*<<< orphan*/  FILE__EXECUTE_NO_TRANS ; 
 int /*<<< orphan*/  FS ; 
 int LSM_UNSAFE_PTRACE ; 
 int LSM_UNSAFE_PTRACE_CAP ; 
 int LSM_UNSAFE_SHARE ; 
 int MNT_NOSUID ; 
 int /*<<< orphan*/  PER_CLEAR_ON_SETID ; 
 int /*<<< orphan*/  PROCESS__PTRACE ; 
 int /*<<< orphan*/  PROCESS__SHARE ; 
 int /*<<< orphan*/  PROCESS__TRANSITION ; 
 int /*<<< orphan*/  SECCLASS_FILE ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 TYPE_8__* FUNC1 (struct task_struct*) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC3 (struct linux_binprm*) ; 
 int /*<<< orphan*/  current ; 
 struct task_security_struct* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct task_struct* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct linux_binprm *bprm)
{
	const struct task_security_struct *old_tsec;
	struct task_security_struct *new_tsec;
	struct inode_security_struct *isec;
	struct common_audit_data ad;
	struct inode *inode = bprm->file->f_path.dentry->d_inode;
	int rc;

	rc = FUNC3(bprm);
	if (rc)
		return rc;

	/* SELinux context only depends on initial program or script and not
	 * the script interpreter */
	if (bprm->cred_prepared)
		return 0;

	old_tsec = FUNC4();
	new_tsec = bprm->cred->security;
	isec = inode->i_security;

	/* Default to the current task SID. */
	new_tsec->sid = old_tsec->sid;
	new_tsec->osid = old_tsec->sid;

	/* Reset fs, key, and sock SIDs on execve. */
	new_tsec->create_sid = 0;
	new_tsec->keycreate_sid = 0;
	new_tsec->sockcreate_sid = 0;

	if (old_tsec->exec_sid) {
		new_tsec->sid = old_tsec->exec_sid;
		/* Reset exec SID on execve. */
		new_tsec->exec_sid = 0;
	} else {
		/* Check for a default transition on this program. */
		rc = FUNC8(old_tsec->sid, isec->sid,
					     SECCLASS_PROCESS, &new_tsec->sid);
		if (rc)
			return rc;
	}

	FUNC0(&ad, FS);
	ad.u.fs.path = bprm->file->f_path;

	if (bprm->file->f_path.mnt->mnt_flags & MNT_NOSUID)
		new_tsec->sid = old_tsec->sid;

	if (new_tsec->sid == old_tsec->sid) {
		rc = FUNC2(old_tsec->sid, isec->sid,
				  SECCLASS_FILE, FILE__EXECUTE_NO_TRANS, &ad);
		if (rc)
			return rc;
	} else {
		/* Check permissions for the transition. */
		rc = FUNC2(old_tsec->sid, new_tsec->sid,
				  SECCLASS_PROCESS, PROCESS__TRANSITION, &ad);
		if (rc)
			return rc;

		rc = FUNC2(new_tsec->sid, isec->sid,
				  SECCLASS_FILE, FILE__ENTRYPOINT, &ad);
		if (rc)
			return rc;

		/* Check for shared state */
		if (bprm->unsafe & LSM_UNSAFE_SHARE) {
			rc = FUNC2(old_tsec->sid, new_tsec->sid,
					  SECCLASS_PROCESS, PROCESS__SHARE,
					  NULL);
			if (rc)
				return -EPERM;
		}

		/* Make sure that anyone attempting to ptrace over a task that
		 * changes its SID has the appropriate permit */
		if (bprm->unsafe &
		    (LSM_UNSAFE_PTRACE | LSM_UNSAFE_PTRACE_CAP)) {
			struct task_struct *tracer;
			struct task_security_struct *sec;
			u32 ptsid = 0;

			FUNC6();
			tracer = FUNC9(current);
			if (FUNC5(tracer != NULL)) {
				sec = FUNC1(tracer)->security;
				ptsid = sec->sid;
			}
			FUNC7();

			if (ptsid != 0) {
				rc = FUNC2(ptsid, new_tsec->sid,
						  SECCLASS_PROCESS,
						  PROCESS__PTRACE, NULL);
				if (rc)
					return -EPERM;
			}
		}

		/* Clear any possibly unsafe personality bits on exec: */
		bprm->per_clear |= PER_CLEAR_ON_SETID;
	}

	return 0;
}