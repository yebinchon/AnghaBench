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
struct kern_ipc_perm {int deleted; int /*<<< orphan*/  id; } ;
struct ipc_ids {int /*<<< orphan*/  in_use; int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
	int lid = FUNC1(ipcp->id);

	FUNC0(&ids->ipcs_idr, lid);

	ids->in_use--;

	ipcp->deleted = 1;

	return;
}