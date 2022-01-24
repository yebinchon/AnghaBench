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
struct p9_conn {int /*<<< orphan*/  wsched; int /*<<< orphan*/  pt; int /*<<< orphan*/  poll_pending_link; int /*<<< orphan*/  wq; int /*<<< orphan*/  rq; int /*<<< orphan*/  unsent_req_list; int /*<<< orphan*/  req_list; struct p9_client* client; int /*<<< orphan*/  mux_list; } ;
struct p9_client {int /*<<< orphan*/  msize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct p9_conn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  Rpending ; 
 int /*<<< orphan*/  Wpending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct p9_conn* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct p9_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p9_pollwait ; 
 int /*<<< orphan*/  p9_read_work ; 
 int /*<<< orphan*/  p9_write_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct p9_conn *FUNC8(struct p9_client *client)
{
	int n;
	struct p9_conn *m;

	FUNC3(P9_DEBUG_TRANS, "client %p msize %d\n", client,
								client->msize);
	m = FUNC5(sizeof(struct p9_conn), GFP_KERNEL);
	if (!m)
		return FUNC0(-ENOMEM);

	FUNC1(&m->mux_list);
	m->client = client;

	FUNC1(&m->req_list);
	FUNC1(&m->unsent_req_list);
	FUNC2(&m->rq, p9_read_work);
	FUNC2(&m->wq, p9_write_work);
	FUNC1(&m->poll_pending_link);
	FUNC4(&m->pt, p9_pollwait);

	n = FUNC6(client, &m->pt);
	if (n & POLLIN) {
		FUNC3(P9_DEBUG_TRANS, "mux %p can read\n", m);
		FUNC7(Rpending, &m->wsched);
	}

	if (n & POLLOUT) {
		FUNC3(P9_DEBUG_TRANS, "mux %p can write\n", m);
		FUNC7(Wpending, &m->wsched);
	}

	return m;
}