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
typedef  int /*<<< orphan*/  u32 ;
struct p9_req_t {int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; int /*<<< orphan*/  fid; } ;
struct p9_qid {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_fid {int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; int /*<<< orphan*/  fid; } ;
struct p9_client {int /*<<< orphan*/  dotu; } ;

/* Variables and functions */
 struct p9_req_t* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  P9_NOFID ; 
 int /*<<< orphan*/  P9_TAUTH ; 
 int FUNC3 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p9_qid*,int) ; 
 struct p9_req_t* FUNC5 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 struct p9_req_t* FUNC6 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 

struct p9_fid *
FUNC11(struct p9_client *clnt, char *uname, u32 n_uname, char *aname)
{
	int err;
	struct p9_req_t *req;
	struct p9_qid qid;
	struct p9_fid *afid;

	FUNC2(P9_DEBUG_9P, ">>> TAUTH uname %s aname %s\n", uname, aname);
	err = 0;

	afid = FUNC6(clnt);
	if (FUNC1(afid)) {
		err = FUNC3(afid);
		afid = NULL;
		goto error;
	}

	req = FUNC5(clnt, P9_TAUTH, "dss?d",
			afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
	if (FUNC1(req)) {
		err = FUNC3(req);
		goto error;
	}

	err = FUNC10(req->rc, clnt->dotu, "Q", &qid);
	if (err) {
		FUNC9(1, req->rc);
		FUNC8(clnt, req);
		goto error;
	}

	FUNC2(P9_DEBUG_9P, "<<< RAUTH qid %x.%llx.%x\n",
					qid.type,
					(unsigned long long)qid.path,
					qid.version);

	FUNC4(&afid->qid, &qid, sizeof(struct p9_qid));
	FUNC8(clnt, req);
	return afid;

error:
	if (afid)
		FUNC7(afid);
	return FUNC0(err);
}