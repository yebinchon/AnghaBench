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
struct smb_request {int rq_resp_wct; int rq_resp_bcc; int /*<<< orphan*/  rq_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct smb_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct smb_request *req, int command, int wct, int bcc)
{
	int result;

	req->rq_resp_wct = wct;
	req->rq_resp_bcc = bcc;

	result = FUNC2(req);
	if (result != 0) {
		FUNC0("smb_request failed\n");
		goto out;
	}

	if (FUNC3(req->rq_header) != 0) {
		FUNC1("invalid packet!\n");
		goto out;
	}

	result = FUNC4(req->rq_header, command, wct, bcc);

out:
	return result;
}