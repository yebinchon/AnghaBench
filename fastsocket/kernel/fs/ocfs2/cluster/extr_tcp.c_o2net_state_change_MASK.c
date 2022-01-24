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
struct sock {void (* sk_state_change ) (struct sock*) ;int sk_state; int /*<<< orphan*/  sk_callback_lock; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {void (* sc_state_change ) (struct sock*) ;int /*<<< orphan*/  sc_shutdown_work; int /*<<< orphan*/  sc_connect_work; } ;

/* Variables and functions */
#define  TCP_ESTABLISHED 130 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int /*<<< orphan*/  FUNC0 (struct o2net_sock_container*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct o2net_sock_container*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	void (*state_change)(struct sock *sk);
	struct o2net_sock_container *sc;

	FUNC1(&sk->sk_callback_lock);
	sc = sk->sk_user_data;
	if (sc == NULL) {
		state_change = sk->sk_state_change;
		goto out;
	}

	FUNC3(sc, "state_change to %d\n", sk->sk_state);

	state_change = sc->sc_state_change;

	switch(sk->sk_state) {
		/* ignore connecting sockets as they make progress */
		case TCP_SYN_SENT:
		case TCP_SYN_RECV:
			break;
		case TCP_ESTABLISHED:
			FUNC0(sc, &sc->sc_connect_work);
			break;
		default:
			FUNC0(sc, &sc->sc_shutdown_work);
			break;
	}
out:
	FUNC2(&sk->sk_callback_lock);
	state_change(sk);
}