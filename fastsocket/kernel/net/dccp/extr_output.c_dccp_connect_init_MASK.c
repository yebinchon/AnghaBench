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
struct sock {scalar_t__ sk_err; } ;
struct inet_connection_sock {scalar_t__ icsk_retransmits; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_iss; int /*<<< orphan*/  dccps_gar; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DONE ; 
 struct dst_entry* FUNC0 (struct sock*) ; 
 struct dccp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct sock *sk)
{
	struct dccp_sock *dp = FUNC1(sk);
	struct dst_entry *dst = FUNC0(sk);
	struct inet_connection_sock *icsk = FUNC4(sk);

	sk->sk_err = 0;
	FUNC5(sk, SOCK_DONE);

	FUNC2(sk, FUNC3(dst));

	/* Initialise GAR as per 8.5; AWL/AWH are set in dccp_transmit_skb() */
	dp->dccps_gar = dp->dccps_iss;

	icsk->icsk_retransmits = 0;
}