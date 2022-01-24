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
struct p9_req_t {scalar_t__ status; int /*<<< orphan*/  req_list; int /*<<< orphan*/  tc; } ;
struct p9_client {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_TFLUSH ; 
 int FUNC2 (struct p9_req_t*) ; 
 scalar_t__ REQ_STATUS_FLSH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct p9_client *c, struct p9_req_t *oldreq)
{
	struct p9_req_t *req;
	int16_t oldtag;
	int err;

	err = FUNC6(oldreq->tc, NULL, NULL, &oldtag, 1);
	if (err)
		return err;

	FUNC1(P9_DEBUG_9P, ">>> TFLUSH tag %d\n", oldtag);

	req = FUNC4(c, P9_TFLUSH, "w", oldtag);
	if (FUNC0(req))
		return FUNC2(req);


	/* if we haven't received a response for oldreq,
	   remove it from the list. */
	FUNC7(&c->lock);
	if (oldreq->status == REQ_STATUS_FLSH)
		FUNC3(&oldreq->req_list);
	FUNC8(&c->lock);

	FUNC5(c, req);
	return 0;
}