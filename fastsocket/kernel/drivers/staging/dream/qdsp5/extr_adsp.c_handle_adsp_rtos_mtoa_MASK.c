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
struct rpc_request_hdr {int procedure; int /*<<< orphan*/  xid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ACCEPTSTAT_PROC_UNAVAIL ; 
 int /*<<< orphan*/  RPC_ACCEPTSTAT_SUCCESS ; 
#define  RPC_ADSP_RTOS_MODEM_TO_APP_PROC 129 
#define  RPC_ADSP_RTOS_MTOA_NULL_PROC 128 
 int /*<<< orphan*/  FUNC0 (struct rpc_request_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  rpc_cb_server_client ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rpc_request_hdr *req)
{
	switch (req->procedure) {
	case RPC_ADSP_RTOS_MTOA_NULL_PROC:
		FUNC2(rpc_cb_server_client,
					     req->xid,
					     RPC_ACCEPTSTAT_SUCCESS);
		break;
	case RPC_ADSP_RTOS_MODEM_TO_APP_PROC:
		FUNC0(req);
		break;
	default:
		FUNC1("adsp: unknowned proc %d\n", req->procedure);
		FUNC2(
			rpc_cb_server_client, req->xid,
			RPC_ACCEPTSTAT_PROC_UNAVAIL);
		break;
	}
	return 0;
}