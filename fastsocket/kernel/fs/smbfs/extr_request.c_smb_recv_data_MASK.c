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
struct smb_sb_info {int /*<<< orphan*/  rstate; } ;
struct smb_request {scalar_t__ rq_bytes_recvd; scalar_t__ rq_rlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_RECV_END ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct smb_sb_info*,struct smb_request*) ; 

__attribute__((used)) static int FUNC2(struct smb_sb_info *server, struct smb_request *req)
{
	int result;

	result = FUNC1(server, req);
	if (result < 0)
		goto out;
	if (req->rq_bytes_recvd < req->rq_rlen)
		goto out;
	server->rstate = SMB_RECV_END;
out:
	FUNC0("result: %d\n", result);
	return result;
}