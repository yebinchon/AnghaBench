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
struct p9_req_t {int /*<<< orphan*/  status; TYPE_1__* tc; } ;
struct p9_client {int /*<<< orphan*/  tagpool; } ;
struct TYPE_2__ {int tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct p9_client*,struct p9_req_t*,int) ; 
 int P9_NOTAG ; 
 int /*<<< orphan*/  REQ_STATUS_IDLE ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct p9_client *c, struct p9_req_t *r)
{
	int tag = r->tc->tag;
	FUNC0(P9_DEBUG_MUX, "clnt %p req %p tag: %d\n", c, r, tag);

	r->status = REQ_STATUS_IDLE;
	if (tag != P9_NOTAG && FUNC1(tag, c->tagpool))
		FUNC2(tag, c->tagpool);
}