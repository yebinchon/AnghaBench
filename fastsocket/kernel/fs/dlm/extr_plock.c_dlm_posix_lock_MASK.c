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
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int ex; int rv; void* owner; int /*<<< orphan*/  end; int /*<<< orphan*/  start; scalar_t__ number; int /*<<< orphan*/  fsid; int /*<<< orphan*/  wait; scalar_t__ pid; int /*<<< orphan*/  optype; } ;
struct plock_op {scalar_t__ done; TYPE_2__ info; int /*<<< orphan*/  list; } ;
struct plock_xop {int /*<<< orphan*/ * callback; struct file* file; struct file_lock* fl; int /*<<< orphan*/  flc; struct plock_op xop; } ;
struct file_lock {scalar_t__ fl_type; scalar_t__ fl_owner; TYPE_1__* fl_lmops; scalar_t__ fl_pid; int /*<<< orphan*/  fl_end; int /*<<< orphan*/  fl_start; } ;
struct file {int dummy; } ;
struct dlm_ls {int /*<<< orphan*/  ls_global_id; } ;
typedef  int /*<<< orphan*/  dlm_lockspace_t ;
typedef  void* __u64 ;
struct TYPE_3__ {int /*<<< orphan*/ * fl_grant; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_PLOCK_OP_LOCK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int FILE_LOCK_DEFERRED ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dlm_ls* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,scalar_t__,struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC4 (struct plock_xop*) ; 
 struct plock_xop* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ls*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ls*,char*,unsigned long long) ; 
 int /*<<< orphan*/  ops_lock ; 
 scalar_t__ FUNC12 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  recv_wq ; 
 int /*<<< orphan*/  FUNC13 (struct plock_op*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 

int FUNC17(dlm_lockspace_t *lockspace, u64 number, struct file *file,
		   int cmd, struct file_lock *fl)
{
	struct dlm_ls *ls;
	struct plock_op *op;
	struct plock_xop *xop;
	int rv;

	ls = FUNC1(lockspace);
	if (!ls)
		return -EINVAL;

	xop = FUNC5(sizeof(*xop), GFP_NOFS);
	if (!xop) {
		rv = -ENOMEM;
		goto out;
	}

	op = &xop->xop;
	op->info.optype		= DLM_PLOCK_OP_LOCK;
	op->info.pid		= fl->fl_pid;
	op->info.ex		= (fl->fl_type == F_WRLCK);
	op->info.wait		= FUNC0(cmd);
	op->info.fsid		= ls->ls_global_id;
	op->info.number		= number;
	op->info.start		= fl->fl_start;
	op->info.end		= fl->fl_end;
	if (fl->fl_lmops && fl->fl_lmops->fl_grant) {
		/* fl_owner is lockd which doesn't distinguish
		   processes on the nfs client */
		op->info.owner	= (__u64) fl->fl_pid;
		xop->callback	= fl->fl_lmops->fl_grant;
		FUNC9(&xop->flc);
		FUNC8(&xop->flc, fl);
		xop->fl		= fl;
		xop->file	= file;
	} else {
		op->info.owner	= (__u64)(long) fl->fl_owner;
		xop->callback	= NULL;
	}

	FUNC13(op);

	if (xop->callback == NULL) {
		rv = FUNC16(recv_wq, (op->done != 0));
		if (rv == -ERESTARTSYS) {
			FUNC10(ls, "dlm_posix_lock: wait killed %llx",
				  (unsigned long long)number);
			FUNC14(&ops_lock);
			FUNC6(&op->list);
			FUNC15(&ops_lock);
			FUNC4(xop);
			FUNC3(ls, number, file, fl);
			goto out;
		}
	} else {
		rv = FILE_LOCK_DEFERRED;
		goto out;
	}

	FUNC14(&ops_lock);
	if (!FUNC7(&op->list)) {
		FUNC11(ls, "dlm_posix_lock: op on list %llx",
			  (unsigned long long)number);
		FUNC6(&op->list);
	}
	FUNC15(&ops_lock);

	rv = op->info.rv;

	if (!rv) {
		if (FUNC12(file, fl) < 0)
			FUNC11(ls, "dlm_posix_lock: vfs lock error %llx",
				  (unsigned long long)number);
	}

	FUNC4(xop);
out:
	FUNC2(ls);
	return rv;
}