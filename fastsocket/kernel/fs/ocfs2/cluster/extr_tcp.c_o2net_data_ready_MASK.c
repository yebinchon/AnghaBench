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
struct sock {void (* sk_data_ready ) (struct sock*,int) ;int /*<<< orphan*/  sk_callback_lock; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {void (* sc_data_ready ) (struct sock*,int) ;int /*<<< orphan*/  sc_rx_work; int /*<<< orphan*/  sc_tv_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct o2net_sock_container*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct o2net_sock_container*,char*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int bytes)
{
	void (*ready)(struct sock *sk, int bytes);

	FUNC2(&sk->sk_callback_lock);
	if (sk->sk_user_data) {
		struct o2net_sock_container *sc = sk->sk_user_data;
		FUNC4(sc, "data_ready hit\n");
		FUNC0(&sc->sc_tv_data_ready);
		FUNC1(sc, &sc->sc_rx_work);
		ready = sc->sc_data_ready;
	} else {
		ready = sk->sk_data_ready;
	}
	FUNC3(&sk->sk_callback_lock);

	ready(sk, bytes);
}