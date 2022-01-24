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
struct sk_buff {scalar_t__ dropcount; } ;
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RXQ_OVFL ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RXQ_OVFL ; 
 int /*<<< orphan*/  FUNC0 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 

inline void FUNC2(struct msghdr *msg, struct sock *sk, struct sk_buff *skb)
{
	if (FUNC1(sk, SOCK_RXQ_OVFL) && skb && skb->dropcount)
		FUNC0(msg, SOL_SOCKET, SO_RXQ_OVFL,
			sizeof(__u32), &skb->dropcount);
}