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
struct kern_ipc_perm {int mode; scalar_t__ cuid; scalar_t__ uid; int /*<<< orphan*/  gid; int /*<<< orphan*/  cgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_OWNER ; 
 int /*<<< orphan*/  FUNC0 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kern_ipc_perm*,short) ; 

int FUNC5 (struct kern_ipc_perm *ipcp, short flag)
{	/* flag will most probably be 0 or S_...UGO from <linux/stat.h> */
	uid_t euid = FUNC2();
	int requested_mode, granted_mode;

	FUNC0(ipcp);
	requested_mode = (flag >> 6) | (flag >> 3) | flag;
	granted_mode = ipcp->mode;
	if (euid == ipcp->cuid ||
	    euid == ipcp->uid)
		granted_mode >>= 6;
	else if (FUNC3(ipcp->cgid) || FUNC3(ipcp->gid))
		granted_mode >>= 3;
	/* is there some bit set in requested_mode but not in granted_mode? */
	if ((requested_mode & ~granted_mode & 0007) && 
	    !FUNC1(CAP_IPC_OWNER))
		return -1;

	return FUNC4(ipcp, flag);
}