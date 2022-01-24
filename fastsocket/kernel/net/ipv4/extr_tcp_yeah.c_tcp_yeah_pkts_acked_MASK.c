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
typedef  int /*<<< orphan*/  u32 ;
struct yeah {int /*<<< orphan*/  pkts_acked; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ TCP_CA_Open ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 struct yeah* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, u32 pkts_acked, s32 rtt_us)
{
	const struct inet_connection_sock *icsk = FUNC0(sk);
	struct yeah *yeah = FUNC1(sk);

	if (icsk->icsk_ca_state == TCP_CA_Open)
		yeah->pkts_acked = pkts_acked;

	FUNC2(sk, pkts_acked, rtt_us);
}