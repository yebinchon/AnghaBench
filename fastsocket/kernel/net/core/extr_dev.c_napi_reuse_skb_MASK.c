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
struct sk_buff {scalar_t__ iif; int /*<<< orphan*/  dev; } ;
struct napi_struct {struct sk_buff* skb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 

void FUNC4(struct napi_struct *napi, struct sk_buff *skb)
{
	FUNC0(skb, FUNC1(skb));
	FUNC3(skb, NET_IP_ALIGN - FUNC2(skb));
	skb->dev = napi->dev;
	skb->iif = 0;

	napi->skb = skb;
}