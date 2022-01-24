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
struct p9_conn {scalar_t__ err; int /*<<< orphan*/  wq; int /*<<< orphan*/  wsched; int /*<<< orphan*/  unsent_req_list; scalar_t__ wsize; int /*<<< orphan*/  rq; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct p9_conn*,...) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLNVAL ; 
 int POLLOUT ; 
 int /*<<< orphan*/  Rpending ; 
 int /*<<< orphan*/  Rworksched ; 
 int /*<<< orphan*/  Wpending ; 
 int /*<<< orphan*/  Wworksched ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_conn*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct p9_conn *m)
{
	int n;

	if (m->err < 0)
		return;

	n = FUNC3(m->client, NULL);
	if (n < 0 || n & (POLLERR | POLLHUP | POLLNVAL)) {
		FUNC0(P9_DEBUG_TRANS, "error mux %p err %d\n", m, n);
		if (n >= 0)
			n = -ECONNRESET;
		FUNC2(m, n);
	}

	if (n & POLLIN) {
		FUNC5(Rpending, &m->wsched);
		FUNC0(P9_DEBUG_TRANS, "mux %p can read\n", m);
		if (!FUNC6(Rworksched, &m->wsched)) {
			FUNC0(P9_DEBUG_TRANS, "sched read work %p\n", m);
			FUNC4(&m->rq);
		}
	}

	if (n & POLLOUT) {
		FUNC5(Wpending, &m->wsched);
		FUNC0(P9_DEBUG_TRANS, "mux %p can write\n", m);
		if ((m->wsize || !FUNC1(&m->unsent_req_list))
		    && !FUNC6(Wworksched, &m->wsched)) {
			FUNC0(P9_DEBUG_TRANS, "sched write work %p\n", m);
			FUNC4(&m->wq);
		}
	}
}