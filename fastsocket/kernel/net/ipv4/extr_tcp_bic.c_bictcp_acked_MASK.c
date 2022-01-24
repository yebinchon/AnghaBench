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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
struct bictcp {int delayed_ack; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int ACK_RATIO_SHIFT ; 
 scalar_t__ TCP_CA_Open ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 struct bictcp* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, u32 cnt, s32 rtt)
{
	const struct inet_connection_sock *icsk = FUNC0(sk);

	if (icsk->icsk_ca_state == TCP_CA_Open) {
		struct bictcp *ca = FUNC1(sk);
		cnt -= ca->delayed_ack >> ACK_RATIO_SHIFT;
		ca->delayed_ack += cnt;
	}
}