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
struct sock {scalar_t__ sk_data_ready; scalar_t__ sk_user_data; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_state_change; } ;
struct o2net_sock_container {scalar_t__ sc_data_ready; int /*<<< orphan*/  sc_send_lock; int /*<<< orphan*/  sc_state_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ o2net_data_ready ; 
 scalar_t__ o2net_listen_data_ready ; 
 int /*<<< orphan*/  o2net_state_change ; 
 int /*<<< orphan*/  FUNC2 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk,
				     struct o2net_sock_container *sc)
{
	FUNC3(&sk->sk_callback_lock);

	/* accepted sockets inherit the old listen socket data ready */
	if (sk->sk_data_ready == o2net_listen_data_ready) {
		sk->sk_data_ready = sk->sk_user_data;
		sk->sk_user_data = NULL;
	}

	FUNC0(sk->sk_user_data != NULL);
	sk->sk_user_data = sc;
	FUNC2(sc);

	sc->sc_data_ready = sk->sk_data_ready;
	sc->sc_state_change = sk->sk_state_change;
	sk->sk_data_ready = o2net_data_ready;
	sk->sk_state_change = o2net_state_change;

	FUNC1(&sc->sc_send_lock);

	FUNC4(&sk->sk_callback_lock);
}