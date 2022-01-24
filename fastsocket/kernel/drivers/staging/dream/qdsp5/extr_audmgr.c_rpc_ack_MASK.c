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
typedef  int uint32_t ;
struct msm_rpc_endpoint {int dummy; } ;
typedef  int /*<<< orphan*/  rep ;

/* Variables and functions */
 int RPCMSG_REPLYSTAT_ACCEPTED ; 
 int RPC_ACCEPTSTAT_SUCCESS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_rpc_endpoint*,int*,int) ; 

__attribute__((used)) static void FUNC2(struct msm_rpc_endpoint *ept, uint32_t xid)
{
	uint32_t rep[6];

	rep[0] = FUNC0(xid);
	rep[1] = FUNC0(1);
	rep[2] = FUNC0(RPCMSG_REPLYSTAT_ACCEPTED);
	rep[3] = FUNC0(RPC_ACCEPTSTAT_SUCCESS);
	rep[4] = 0;
	rep[5] = 0;

	FUNC1(ept, rep, sizeof(rep));
}