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
struct rpc_request_hdr {scalar_t__ xid; void* procedure; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; void* rpc_vers; } ;
struct TYPE_3__ {scalar_t__ accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {scalar_t__ type; scalar_t__ xid; scalar_t__ reply_stat; TYPE_2__ data; } ;
struct msm_rpc_endpoint {int dst_pid; int /*<<< orphan*/  dst_vers; int /*<<< orphan*/  dst_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EPERM ; 
 int ETOOSMALL ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_reply_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct rpc_reply_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_request_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct msm_rpc_endpoint*,void*,int,long) ; 
 int FUNC6 (struct msm_rpc_endpoint*,struct rpc_request_hdr*,int) ; 
 int /*<<< orphan*/  next_xid ; 

int FUNC7(struct msm_rpc_endpoint *ept, uint32_t proc,
		       void *_request, int request_size,
		       void *_reply, int reply_size,
		       long timeout)
{
	struct rpc_request_hdr *req = _request;
	struct rpc_reply_hdr *reply;
	int rc;

	if (request_size < sizeof(*req))
		return -ETOOSMALL;

	if (ept->dst_pid == 0xffffffff)
		return -ENOTCONN;

	/* We can't use msm_rpc_setup_req() here, because dst_prog and
	 * dst_vers here are already in BE.
	 */
	FUNC4(req, 0, sizeof(*req));
	req->xid = FUNC1(FUNC0(1, &next_xid));
	req->rpc_vers = FUNC1(2);
	req->prog = ept->dst_prog;
	req->vers = ept->dst_vers;
	req->procedure = FUNC1(proc);

	rc = FUNC6(ept, req, request_size);
	if (rc < 0)
		return rc;

	for (;;) {
		rc = FUNC5(ept, (void*) &reply, -1, timeout);
		if (rc < 0)
			return rc;
		if (rc < (3 * sizeof(uint32_t))) {
			rc = -EIO;
			break;
		}
		/* we should not get CALL packets -- ignore them */
		if (reply->type == 0) {
			FUNC2(reply);
			continue;
		}
		/* If an earlier call timed out, we could get the (no
		 * longer wanted) reply for it.  Ignore replies that
		 * we don't expect.
		 */
		if (reply->xid != req->xid) {
			FUNC2(reply);
			continue;
		}
		if (reply->reply_stat != 0) {
			rc = -EPERM;
			break;
		}
		if (reply->data.acc_hdr.accept_stat != 0) {
			rc = -EINVAL;
			break;
		}
		if (_reply == NULL) {
			rc = 0;
			break;
		}
		if (rc > reply_size) {
			rc = -ENOMEM;
		} else {
			FUNC3(_reply, reply, rc);
		}
		break;
	}
	FUNC2(reply);
	return rc;
}