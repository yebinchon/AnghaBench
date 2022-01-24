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
struct netpoll_info {int /*<<< orphan*/  rx_flags; } ;
struct napi_struct {int (* poll ) (struct napi_struct*,int) ;int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAPI_STATE_NPSVC ; 
 int /*<<< orphan*/  NAPI_STATE_SCHED ; 
 int /*<<< orphan*/  NETPOLL_RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct napi_struct*) ; 
 int /*<<< orphan*/  trapped ; 

__attribute__((used)) static int FUNC7(struct netpoll_info *npinfo,
			 struct napi_struct *napi, int budget)
{
	int work;

	/* net_rx_action's ->poll() invocations and our's are
	 * synchronized by this test which is only made while
	 * holding the napi->poll_lock.
	 */
	if (!FUNC5(NAPI_STATE_SCHED, &napi->state))
		return budget;

	npinfo->rx_flags |= NETPOLL_RX_DROP;
	FUNC1(&trapped);
	FUNC3(NAPI_STATE_NPSVC, &napi->state);

	work = napi->poll(napi, budget);
	FUNC6(napi);

	FUNC2(NAPI_STATE_NPSVC, &napi->state);
	FUNC0(&trapped);
	npinfo->rx_flags &= ~NETPOLL_RX_DROP;

	return budget - work;
}