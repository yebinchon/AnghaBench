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
struct sock {int dummy; } ;
struct ip_options {scalar_t__ cipso; } ;
struct inet_sock {scalar_t__ is_icsk; int /*<<< orphan*/  opt; } ;
struct inet_connection_sock {int icsk_ext_hdr_len; int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/  (* icsk_sync_mss ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 struct ip_options* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC5(struct sock *sk)
{
	int hdr_delta;
	struct ip_options *opt;
	struct inet_sock *sk_inet;

	sk_inet = FUNC2(sk);
	opt = FUNC3(sk_inet->opt);
	if (opt == NULL || opt->cipso == 0)
		return;

	hdr_delta = FUNC0(&sk_inet->opt);
	if (sk_inet->is_icsk && hdr_delta > 0) {
		struct inet_connection_sock *sk_conn = FUNC1(sk);
		sk_conn->icsk_ext_hdr_len -= hdr_delta;
		sk_conn->icsk_sync_mss(sk, sk_conn->icsk_pmtu_cookie);
	}
}