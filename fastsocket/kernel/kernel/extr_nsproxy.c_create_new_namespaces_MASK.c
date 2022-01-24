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
struct task_struct {TYPE_1__* nsproxy; } ;
struct nsproxy {scalar_t__ mnt_ns; scalar_t__ uts_ns; scalar_t__ ipc_ns; scalar_t__ pid_ns; scalar_t__ net_ns; } ;
struct fs_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_ns; int /*<<< orphan*/  pid_ns; int /*<<< orphan*/  ipc_ns; int /*<<< orphan*/  uts_ns; int /*<<< orphan*/  mnt_ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nsproxy* FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,int /*<<< orphan*/ ,struct fs_struct*) ; 
 scalar_t__ FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 struct nsproxy* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct nsproxy*) ; 
 int /*<<< orphan*/  nsproxy_cachep ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static struct nsproxy *FUNC14(unsigned long flags,
			struct task_struct *tsk, struct fs_struct *new_fs)
{
	struct nsproxy *new_nsp;
	int err;

	new_nsp = FUNC8();
	if (!new_nsp)
		return FUNC0(-ENOMEM);

	new_nsp->mnt_ns = FUNC4(flags, tsk->nsproxy->mnt_ns, new_fs);
	if (FUNC1(new_nsp->mnt_ns)) {
		err = FUNC2(new_nsp->mnt_ns);
		goto out_ns;
	}

	new_nsp->uts_ns = FUNC7(flags, tsk->nsproxy->uts_ns);
	if (FUNC1(new_nsp->uts_ns)) {
		err = FUNC2(new_nsp->uts_ns);
		goto out_uts;
	}

	new_nsp->ipc_ns = FUNC3(flags, tsk->nsproxy->ipc_ns);
	if (FUNC1(new_nsp->ipc_ns)) {
		err = FUNC2(new_nsp->ipc_ns);
		goto out_ipc;
	}

	new_nsp->pid_ns = FUNC6(flags, tsk->nsproxy->pid_ns);
	if (FUNC1(new_nsp->pid_ns)) {
		err = FUNC2(new_nsp->pid_ns);
		goto out_pid;
	}

	new_nsp->net_ns = FUNC5(flags, tsk->nsproxy->net_ns);
	if (FUNC1(new_nsp->net_ns)) {
		err = FUNC2(new_nsp->net_ns);
		goto out_net;
	}

	return new_nsp;

out_net:
	if (new_nsp->pid_ns)
		FUNC12(new_nsp->pid_ns);
out_pid:
	if (new_nsp->ipc_ns)
		FUNC10(new_nsp->ipc_ns);
out_ipc:
	if (new_nsp->uts_ns)
		FUNC13(new_nsp->uts_ns);
out_uts:
	if (new_nsp->mnt_ns)
		FUNC11(new_nsp->mnt_ns);
out_ns:
	FUNC9(nsproxy_cachep, new_nsp);
	return FUNC0(err);
}