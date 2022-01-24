#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* netlink_send ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 TYPE_1__* security_ops ; 
 int FUNC0 (struct sock*,struct sk_buff*) ; 

int FUNC1(struct sock *sk, struct sk_buff *skb)
{
	return security_ops->netlink_send(sk, skb);
}