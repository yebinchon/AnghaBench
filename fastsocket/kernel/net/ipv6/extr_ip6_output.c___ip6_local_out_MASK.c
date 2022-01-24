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
struct sk_buff {int len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  payload_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IPV6_MAXPLEN ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb)
{
	int len;

	len = skb->len - sizeof(struct ipv6hdr);
	if (len > IPV6_MAXPLEN)
		len = 0;
	FUNC1(skb)->payload_len = FUNC0(len);

	return FUNC2(PF_INET6, NF_INET_LOCAL_OUT, skb, NULL, FUNC3(skb)->dev,
		       dst_output);
}