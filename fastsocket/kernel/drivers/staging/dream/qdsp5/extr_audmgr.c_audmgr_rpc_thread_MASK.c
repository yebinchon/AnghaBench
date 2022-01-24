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
typedef  scalar_t__ uint32_t ;
struct rpc_request_hdr {int /*<<< orphan*/  xid; int /*<<< orphan*/  procedure; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {TYPE_2__ data; int /*<<< orphan*/  reply_stat; } ;
struct audmgr {int /*<<< orphan*/  wait; int /*<<< orphan*/ * task; int /*<<< orphan*/  ept; } ;

/* Variables and functions */
 scalar_t__ RPCMSG_REPLYSTAT_ACCEPTED ; 
 int RPC_COMMON_HDR_SZ ; 
 int RPC_REPLY_HDR_SZ ; 
 int RPC_REQUEST_HDR_SZ ; 
 scalar_t__ RPC_TYPE_REPLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_request_hdr*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct audmgr *am = data;
	struct rpc_request_hdr *hdr = NULL;
	uint32_t type;
	int len;

	FUNC5("audmgr_rpc_thread() start\n");

	while (!FUNC2()) {
		if (hdr) {
			FUNC1(hdr);
			hdr = NULL;
		}
		len = FUNC3(am->ept, (void **) &hdr, -1, -1);
		if (len < 0) {
			FUNC4("audmgr: rpc read failed (%d)\n", len);
			break;
		}
		if (len < RPC_COMMON_HDR_SZ)
			continue;

		type = FUNC0(hdr->type);
		if (type == RPC_TYPE_REPLY) {
			struct rpc_reply_hdr *rep = (void *) hdr;
			uint32_t status;
			if (len < RPC_REPLY_HDR_SZ)
				continue;
			status = FUNC0(rep->reply_stat);
			if (status == RPCMSG_REPLYSTAT_ACCEPTED) {
				status = FUNC0(rep->data.acc_hdr.accept_stat);
				FUNC5("audmgr: rpc_reply status %d\n", status);
			} else {
				FUNC5("audmgr: rpc_reply denied!\n");
			}
			/* process reply */
			continue;
		}

		if (len < RPC_REQUEST_HDR_SZ)
			continue;

		FUNC6(FUNC0(hdr->procedure),
				    FUNC0(hdr->xid),
				    (void *) (hdr + 1),
				    len - sizeof(*hdr),
				    data);
	}
	FUNC5("audmgr_rpc_thread() exit\n");
	if (hdr) {
		FUNC1(hdr);
		hdr = NULL;
	}
	am->task = NULL;
	FUNC7(&am->wait);
	return 0;
}