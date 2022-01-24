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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {TYPE_2__ data; int /*<<< orphan*/  reply_stat; } ;
struct rpc_adsp_rtos_app_to_modem_args_t {void* module; void* proc_id; void* cmd; void* gotit; int /*<<< orphan*/  hdr; } ;
struct msm_adsp_module {int /*<<< orphan*/  rpc_client; } ;
typedef  int /*<<< orphan*/  rpc_req ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int HZ ; 
 scalar_t__ RPCMSG_REPLYSTAT_ACCEPTED ; 
 scalar_t__ RPC_ACCEPTSTAT_SUCCESS ; 
 int /*<<< orphan*/  RPC_ADSP_RTOS_APP_TO_MODEM_PROC ; 
 int /*<<< orphan*/  RPC_ADSP_RTOS_ATOM_PROG ; 
 int RPC_ADSP_RTOS_PROC_APPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_reply_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_adsp_rtos_app_to_modem_args_t*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(uint32_t cmd, uint32_t module,
				      struct msm_adsp_module *adsp_module)
{
	int rc;
	struct rpc_adsp_rtos_app_to_modem_args_t rpc_req;
	struct rpc_reply_hdr *rpc_rsp;

	FUNC5(&rpc_req.hdr,
			  RPC_ADSP_RTOS_ATOM_PROG,
			  FUNC3(adsp_module->rpc_client),
			  RPC_ADSP_RTOS_APP_TO_MODEM_PROC);

	rpc_req.gotit = FUNC1(1);
	rpc_req.cmd = FUNC1(cmd);
	rpc_req.proc_id = FUNC1(RPC_ADSP_RTOS_PROC_APPS);
	rpc_req.module = FUNC1(module);
	rc = FUNC6(adsp_module->rpc_client, &rpc_req, sizeof(rpc_req));
	if (rc < 0) {
		FUNC7("adsp: could not send RPC request: %d\n", rc);
		return rc;
	}

	rc = FUNC4(adsp_module->rpc_client,
			  (void **)&rpc_rsp, -1, (5*HZ));
	if (rc < 0) {
		FUNC7("adsp: error receiving RPC reply: %d (%d)\n",
		       rc, -ERESTARTSYS);
		return rc;
	}

	if (FUNC0(rpc_rsp->reply_stat) != RPCMSG_REPLYSTAT_ACCEPTED) {
		FUNC7("adsp: RPC call was denied!\n");
		FUNC2(rpc_rsp);
		return -EPERM;
	}

	if (FUNC0(rpc_rsp->data.acc_hdr.accept_stat) !=
	    RPC_ACCEPTSTAT_SUCCESS) {
		FUNC7("adsp error: RPC call was not successful (%d)\n",
		       FUNC0(rpc_rsp->data.acc_hdr.accept_stat));
		FUNC2(rpc_rsp);
		return -EINVAL;
	}

	FUNC2(rpc_rsp);
	return 0;
}