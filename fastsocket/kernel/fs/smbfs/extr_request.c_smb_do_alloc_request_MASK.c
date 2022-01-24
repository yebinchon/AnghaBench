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
struct smb_sb_info {int dummy; } ;
struct smb_request {unsigned char* rq_buffer; int rq_bufsize; int /*<<< orphan*/  rq_count; int /*<<< orphan*/  rq_queue; int /*<<< orphan*/  rq_wait; struct smb_sb_info* rq_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct smb_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct smb_request*) ; 
 struct smb_request* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_cachep ; 

__attribute__((used)) static struct smb_request *FUNC7(struct smb_sb_info *server,
						int bufsize)
{
	struct smb_request *req;
	unsigned char *buf = NULL;

	req = FUNC6(req_cachep, GFP_KERNEL);
	FUNC1("allocating request: %p\n", req);
	if (!req)
		goto out;

	if (bufsize > 0) {
		buf = FUNC4(bufsize, GFP_NOFS);
		if (!buf) {
			FUNC5(req_cachep, req);
			return NULL;
		}
	}

	req->rq_buffer = buf;
	req->rq_bufsize = bufsize;
	req->rq_server = server;
	FUNC3(&req->rq_wait);
	FUNC0(&req->rq_queue);
	FUNC2(&req->rq_count, 1);

out:
	return req;
}