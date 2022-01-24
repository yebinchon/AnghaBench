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
typedef  scalar_t__ uid_t ;
struct kern_ipc_perm {scalar_t__ cuid; scalar_t__ uid; } ;
struct ipc_ids {int /*<<< orphan*/  rw_mutex; } ;
struct ipc64_perm {int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 struct kern_ipc_perm* FUNC0 (int) ; 
 int IPC_SET ; 
 scalar_t__ FUNC1 (struct kern_ipc_perm*) ; 
 int FUNC2 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct kern_ipc_perm* FUNC8 (struct ipc_ids*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct kern_ipc_perm *FUNC11(struct ipc_ids *ids, int id, int cmd,
				      struct ipc64_perm *perm, int extra_perm)
{
	struct kern_ipc_perm *ipcp;
	uid_t euid;
	int err;

	FUNC7(&ids->rw_mutex);
	ipcp = FUNC8(ids, id);
	if (FUNC1(ipcp)) {
		err = FUNC2(ipcp);
		goto out_up;
	}

	FUNC3(ipcp);
	if (cmd == IPC_SET)
		FUNC4(extra_perm, perm->uid,
					 perm->gid, perm->mode);

	euid = FUNC6();
	if (euid == ipcp->cuid ||
	    euid == ipcp->uid  || FUNC5(CAP_SYS_ADMIN))
		return ipcp;

	err = -EPERM;
	FUNC9(ipcp);
out_up:
	FUNC10(&ids->rw_mutex);
	return FUNC0(err);
}