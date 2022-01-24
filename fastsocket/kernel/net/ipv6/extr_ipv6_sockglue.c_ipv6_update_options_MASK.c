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
struct sock {int sk_state; int /*<<< orphan*/  sk_dst_lock; } ;
struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ opt_flen; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/  (* icsk_sync_mss ) (struct sock*,int /*<<< orphan*/ ) ;scalar_t__ icsk_ext_hdr_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  opt; } ;
struct TYPE_3__ {scalar_t__ daddr; scalar_t__ is_icsk; } ;

/* Variables and functions */
 scalar_t__ LOOPBACK4_IPV6 ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ipv6_txoptions* FUNC7 (int /*<<< orphan*/ *,struct ipv6_txoptions*) ; 

__attribute__((used)) static
struct ipv6_txoptions *FUNC8(struct sock *sk,
					   struct ipv6_txoptions *opt)
{
	if (FUNC2(sk)->is_icsk) {
		if (opt &&
		    !((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE)) &&
		    FUNC2(sk)->daddr != LOOPBACK4_IPV6) {
			struct inet_connection_sock *icsk = FUNC1(sk);
			icsk->icsk_ext_hdr_len = opt->opt_flen + opt->opt_nflen;
			icsk->icsk_sync_mss(sk, icsk->icsk_pmtu_cookie);
		}
		opt = FUNC7(&FUNC0(sk)->opt, opt);
	} else {
		FUNC5(&sk->sk_dst_lock);
		opt = FUNC7(&FUNC0(sk)->opt, opt);
		FUNC6(&sk->sk_dst_lock);
	}
	FUNC3(sk);

	return opt;
}