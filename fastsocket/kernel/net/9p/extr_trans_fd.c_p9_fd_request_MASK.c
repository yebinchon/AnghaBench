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
struct p9_trans_fd {struct p9_conn* conn; } ;
struct p9_req_t {int /*<<< orphan*/  req_list; int /*<<< orphan*/  status; TYPE_1__* tc; } ;
struct p9_conn {scalar_t__ err; int /*<<< orphan*/  wq; int /*<<< orphan*/  wsched; int /*<<< orphan*/  client; int /*<<< orphan*/  unsent_req_list; } ;
struct p9_client {int /*<<< orphan*/  lock; struct p9_trans_fd* trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct p9_conn*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int POLLOUT ; 
 int /*<<< orphan*/  REQ_STATUS_UNSENT ; 
 int /*<<< orphan*/  Wpending ; 
 int /*<<< orphan*/  Wworksched ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct p9_client *client, struct p9_req_t *req)
{
	int n;
	struct p9_trans_fd *ts = client->trans;
	struct p9_conn *m = ts->conn;

	FUNC0(P9_DEBUG_TRANS, "mux %p task %p tcall %p id %d\n", m,
						current, req->tc, req->tc->id);
	if (m->err < 0)
		return m->err;

	FUNC4(&client->lock);
	req->status = REQ_STATUS_UNSENT;
	FUNC1(&req->req_list, &m->unsent_req_list);
	FUNC5(&client->lock);

	if (FUNC6(Wpending, &m->wsched))
		n = POLLOUT;
	else
		n = FUNC2(m->client, NULL);

	if (n & POLLOUT && !FUNC7(Wworksched, &m->wsched))
		FUNC3(&m->wq);

	return 0;
}