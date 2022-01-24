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
struct TYPE_2__ {int /*<<< orphan*/  next; int /*<<< orphan*/  prev; } ;
struct p9_conn {int /*<<< orphan*/ * client; int /*<<< orphan*/  wq; int /*<<< orphan*/  rq; TYPE_1__ mux_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct p9_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_conn*) ; 

__attribute__((used)) static void FUNC5(struct p9_conn *m)
{
	FUNC0(P9_DEBUG_TRANS, "mux %p prev %p next %p\n", m,
		m->mux_list.prev, m->mux_list.next);

	FUNC4(m);
	FUNC1(&m->rq);
	FUNC1(&m->wq);

	FUNC3(m, -ECONNRESET);

	m->client = NULL;
	FUNC2(m);
}