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
struct smb_request {int rq_flags; scalar_t__ rq_trans2buffer; scalar_t__ rq_buffer; TYPE_1__* rq_server; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_requests; } ;

/* Variables and functions */
 int SMB_REQ_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct smb_request*) ; 
 int /*<<< orphan*/  req_cachep ; 

__attribute__((used)) static void FUNC3(struct smb_request *req)
{
	FUNC0(&req->rq_server->nr_requests);
	if (req->rq_buffer && !(req->rq_flags & SMB_REQ_STATIC))
		FUNC1(req->rq_buffer);
	FUNC1(req->rq_trans2buffer);
	FUNC2(req_cachep, req);
}