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
struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_local {int /*<<< orphan*/  srx; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  usage; int /*<<< orphan*/  services_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  reject_queue; int /*<<< orphan*/  accept_queue; int /*<<< orphan*/  defrag_sem; int /*<<< orphan*/  link; int /*<<< orphan*/  services; int /*<<< orphan*/  rejecter; int /*<<< orphan*/  acceptor; int /*<<< orphan*/  destroyer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rxrpc_local* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr_rxrpc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_accept_incoming_calls ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_destroy_local ; 
 int /*<<< orphan*/  rxrpc_reject_packets ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
struct rxrpc_local *FUNC11(struct sockaddr_rxrpc *srx)
{
	struct rxrpc_local *local;

	local = FUNC6(sizeof(struct rxrpc_local), GFP_KERNEL);
	if (local) {
		FUNC1(&local->destroyer, &rxrpc_destroy_local);
		FUNC1(&local->acceptor, &rxrpc_accept_incoming_calls);
		FUNC1(&local->rejecter, &rxrpc_reject_packets);
		FUNC0(&local->services);
		FUNC0(&local->link);
		FUNC5(&local->defrag_sem);
		FUNC9(&local->accept_queue);
		FUNC9(&local->reject_queue);
		FUNC10(&local->lock);
		FUNC8(&local->services_lock);
		FUNC4(&local->usage, 1);
		local->debug_id = FUNC3(&rxrpc_debug_id);
		FUNC7(&local->srx, srx, sizeof(*srx));
	}

	FUNC2(" = %p", local);
	return local;
}