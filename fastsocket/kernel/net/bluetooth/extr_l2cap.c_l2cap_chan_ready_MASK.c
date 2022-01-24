#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct TYPE_4__ {struct sock* parent; } ;
struct TYPE_3__ {scalar_t__ conf_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct sock *parent = FUNC1(sk)->parent;

	FUNC0("sk %p, parent %p", sk, parent);

	FUNC2(sk)->conf_state = 0;
	FUNC3(sk);

	if (!parent) {
		/* Outgoing channel.
		 * Wake up socket sleeping on connect.
		 */
		sk->sk_state = BT_CONNECTED;
		sk->sk_state_change(sk);
	} else {
		/* Incoming channel.
		 * Wake up socket sleeping on accept.
		 */
		parent->sk_data_ready(parent, 0);
	}
}