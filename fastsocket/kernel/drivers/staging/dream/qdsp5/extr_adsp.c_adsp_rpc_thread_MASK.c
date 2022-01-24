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
struct rpc_request_hdr {scalar_t__ type; scalar_t__ xid; scalar_t__ rpc_vers; scalar_t__ prog; scalar_t__ vers; scalar_t__ procedure; } ;

/* Variables and functions */
 scalar_t__ RPC_ADSP_RTOS_MTOA_PROG ; 
 scalar_t__ RPC_ADSP_RTOS_MTOA_VERS ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_request_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  rpc_cb_server_client ; 

__attribute__((used)) static int FUNC6(void *data)
{
	void *buffer;
	struct rpc_request_hdr *req;
	int rc;

	do {
		rc = FUNC4(rpc_cb_server_client, &buffer, -1, -1);
		if (rc < 0) {
			FUNC5("adsp: could not read rpc: %d\n", rc);
			break;
		}
		req = (struct rpc_request_hdr *)buffer;

		req->type = FUNC0(req->type);
		req->xid = FUNC0(req->xid);
		req->rpc_vers = FUNC0(req->rpc_vers);
		req->prog = FUNC0(req->prog);
		req->vers = FUNC0(req->vers);
		req->procedure = FUNC0(req->procedure);

		if (req->type != 0)
			goto bad_rpc;
		if (req->rpc_vers != 2)
			goto bad_rpc;
		if (req->prog != RPC_ADSP_RTOS_MTOA_PROG)
			goto bad_rpc;
		if (req->vers != RPC_ADSP_RTOS_MTOA_VERS)
			goto bad_rpc;

		FUNC2(req);
		FUNC3(buffer);
		continue;

bad_rpc:
		FUNC5("adsp: bogus rpc from modem\n");
		FUNC3(buffer);
	} while (1);

	FUNC1(0);
}