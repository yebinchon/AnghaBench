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
struct TYPE_4__ {int /*<<< orphan*/  xpt_flags; } ;
struct svc_sock {TYPE_2__ sk_xprt; int /*<<< orphan*/ * sk_pages; scalar_t__ sk_tcplen; scalar_t__ sk_reclen; struct sock* sk_sk; } ;
struct svc_serv {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/  sk_state_change; } ;
struct TYPE_3__ {int /*<<< orphan*/  nonagle; } ;

/* Variables and functions */
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_NAGLE_OFF ; 
 int /*<<< orphan*/  XPT_CACHE_AUTH ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  XPT_CONN ; 
 int /*<<< orphan*/  XPT_DATA ; 
 int /*<<< orphan*/  XPT_LISTENER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_tcp_class ; 
 int /*<<< orphan*/  svc_tcp_data_ready ; 
 int /*<<< orphan*/  svc_tcp_listen_data_ready ; 
 int /*<<< orphan*/  svc_tcp_state_change ; 
 int /*<<< orphan*/  svc_tcp_write_space ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,struct svc_serv*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct svc_sock *svsk, struct svc_serv *serv)
{
	struct sock	*sk = svsk->sk_sk;

	FUNC3(&svc_tcp_class, &svsk->sk_xprt, serv);
	FUNC2(XPT_CACHE_AUTH, &svsk->sk_xprt.xpt_flags);
	if (sk->sk_state == TCP_LISTEN) {
		FUNC0("setting up TCP socket for listening\n");
		FUNC2(XPT_LISTENER, &svsk->sk_xprt.xpt_flags);
		sk->sk_data_ready = svc_tcp_listen_data_ready;
		FUNC2(XPT_CONN, &svsk->sk_xprt.xpt_flags);
	} else {
		FUNC0("setting up TCP socket for reading\n");
		sk->sk_state_change = svc_tcp_state_change;
		sk->sk_data_ready = svc_tcp_data_ready;
		sk->sk_write_space = svc_tcp_write_space;

		svsk->sk_reclen = 0;
		svsk->sk_tcplen = 0;
		FUNC1(&svsk->sk_pages[0], 0, sizeof(svsk->sk_pages));

		FUNC4(sk)->nonagle |= TCP_NAGLE_OFF;

		FUNC2(XPT_DATA, &svsk->sk_xprt.xpt_flags);
		if (sk->sk_state != TCP_ESTABLISHED)
			FUNC2(XPT_CLOSE, &svsk->sk_xprt.xpt_flags);
	}
}