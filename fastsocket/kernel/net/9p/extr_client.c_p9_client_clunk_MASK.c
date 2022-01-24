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
struct p9_req_t {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_TCLUNK ; 
 int FUNC2 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC3 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 

int FUNC6(struct p9_fid *fid)
{
	int err;
	struct p9_client *clnt;
	struct p9_req_t *req;

	FUNC1(P9_DEBUG_9P, ">>> TCLUNK fid %d\n", fid->fid);
	err = 0;
	clnt = fid->clnt;

	req = FUNC3(clnt, P9_TCLUNK, "d", fid->fid);
	if (FUNC0(req)) {
		err = FUNC2(req);
		goto error;
	}

	FUNC1(P9_DEBUG_9P, "<<< RCLUNK fid %d\n", fid->fid);

	FUNC5(clnt, req);
	FUNC4(fid);

error:
	return err;
}