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
struct nfs_client {scalar_t__ cl_state; scalar_t__ cl_cons_state; int /*<<< orphan*/  cl_hostname; TYPE_1__* cl_mvops; int /*<<< orphan*/  cl_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  nograce_recovery_ops; int /*<<< orphan*/  reboot_recovery_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_DELEGRETURN ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int /*<<< orphan*/  NFS4CLNT_RECALL_SLOT ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_NOGRACE ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  NFS4CLNT_SESSION_RESET ; 
 int NFS4ERR_CB_PATH_DOWN ; 
 scalar_t__ NFS_CS_SESSION_INITING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int FUNC4 (struct nfs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_client*) ; 
 scalar_t__ FUNC6 (struct nfs_client*) ; 
 int FUNC7 (struct nfs_client*) ; 
 int FUNC8 (struct nfs_client*) ; 
 int FUNC9 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_client*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC21(struct nfs_client *clp)
{
	int status = 0;
	const char *section = "", *section_sep = "";

	/* Ensure exclusive access to NFSv4 state */
	do {
		if (FUNC18(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state)) {
			section = "lease expired";
			/* We're going to have to re-establish a clientid */
			status = FUNC8(clp);
			if (status) {
				FUNC10(clp, status);
				if (FUNC20(NFS4CLNT_LEASE_EXPIRED,
							&clp->cl_state))
					continue;
				if (clp->cl_cons_state ==
							NFS_CS_SESSION_INITING)
					FUNC13(clp, status);
				goto out_error;
			}
			FUNC1(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
			FUNC16(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
			FUNC14(clp);
		}

		if (FUNC18(NFS4CLNT_CHECK_LEASE, &clp->cl_state)) {
			section = "check lease";
			status = FUNC2(clp);
			if (FUNC20(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
				continue;
			if (status < 0 && status != -NFS4ERR_CB_PATH_DOWN)
				goto out_error;
		}

		/* Initialize or reset the session */
		if (FUNC18(NFS4CLNT_SESSION_RESET, &clp->cl_state)
		   && FUNC6(clp)) {
			section = "reset session";
			status = FUNC9(clp);
			if (FUNC20(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
				continue;
			if (status < 0)
				goto out_error;
		}

		/* First recover reboot state... */
		if (FUNC20(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state)) {
			section = "reclaim reboot";
			status = FUNC4(clp,
				clp->cl_mvops->reboot_recovery_ops);
			if (FUNC20(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) ||
			    FUNC20(NFS4CLNT_SESSION_RESET, &clp->cl_state))
				continue;
			FUNC11(clp);
			if (FUNC20(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state))
				continue;
			if (status < 0)
				goto out_error;
		}

		/* Now recover expired state... */
		if (FUNC18(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state)) {
			section = "reclaim nograce";
			status = FUNC4(clp,
				clp->cl_mvops->nograce_recovery_ops);
			if (FUNC20(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) ||
			    FUNC20(NFS4CLNT_SESSION_RESET, &clp->cl_state) ||
			    FUNC20(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state))
				continue;
			if (status < 0)
				goto out_error;
		}

		FUNC5(clp);
		if (FUNC18(NFS4CLNT_DELEGRETURN, &clp->cl_state)) {
			FUNC12(clp);
			continue;
		}
		/* Recall session slots */
		if (FUNC18(NFS4CLNT_RECALL_SLOT, &clp->cl_state)
		   && FUNC6(clp)) {
			section = "recall slot";
			status = FUNC7(clp);
			if (status < 0)
				goto out_error;
			continue;
		}


		FUNC3(clp);
		/* Did we race with an attempt to give us more work? */
		if (clp->cl_state == 0)
			break;
		if (FUNC19(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
			break;
	} while (FUNC0(&clp->cl_count) > 1);
	return;
out_error:
	if (FUNC17(section))
		section_sep = ": ";
	FUNC15("NFS: state manager%s%s failed on NFSv4 server %s"
			" with error %d\n", section_sep, section,
			clp->cl_hostname, -status);
	FUNC5(clp);
	FUNC3(clp);
}