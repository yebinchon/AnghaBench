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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/  destructor; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sctp_packet_release_owner ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, struct sock *sk)
{
	FUNC1(skb);
	skb->sk = sk;
	skb->destructor = sctp_packet_release_owner;

	/*
	 * The data chunks have already been accounted for in sctp_sendmsg(),
	 * therefore only reserve a single byte to keep socket around until
	 * the packet has been transmitted.
	 */
	FUNC0(&sk->sk_wmem_alloc);
}