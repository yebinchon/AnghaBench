#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
struct TYPE_6__ {TYPE_1__ seq; } ;
struct TYPE_7__ {TYPE_2__ s; } ;
struct subscription {scalar_t__ timeout; int /*<<< orphan*/  timer; TYPE_3__ evt; int /*<<< orphan*/  subscription_list; int /*<<< orphan*/  server_ref; } ;
struct port {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  subscription_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_SUBSCR_TIMEOUT ; 
 scalar_t__ TIPC_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct subscription*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct subscription*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct subscription*) ; 
 struct port* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct port*) ; 
 TYPE_4__ topsrv ; 

__attribute__((used)) static void FUNC8(struct subscription *sub)
{
	struct port *server_port;

	/* Validate server port reference (in case subscriber is terminating) */

	server_port = FUNC6(sub->server_ref);
	if (server_port == NULL)
		return;

	/* Validate timeout (in case subscription is being cancelled) */

	if (sub->timeout == TIPC_WAIT_FOREVER) {
		FUNC7(server_port);
		return;
	}

	/* Unlink subscription from name table */

	FUNC5(sub);

	/* Unlink subscription from subscriber */

	FUNC3(&sub->subscription_list);

	/* Release subscriber's server port */

	FUNC7(server_port);

	/* Notify subscriber of timeout */

	FUNC4(sub, sub->evt.s.seq.lower, sub->evt.s.seq.upper,
			  TIPC_SUBSCR_TIMEOUT, 0, 0);

	/* Now destroy subscription */

	FUNC1(&sub->timer);
	FUNC2(sub);
	FUNC0(&topsrv.subscription_count);
}