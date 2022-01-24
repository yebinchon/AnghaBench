#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct iphdr {scalar_t__ protocol; int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  gateway; } ;
struct TYPE_6__ {int code; TYPE_1__ un; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
#define  ICMP_REDIR_HOST 131 
#define  ICMP_REDIR_HOSTTOS 130 
#define  ICMP_REDIR_NET 129 
#define  ICMP_REDIR_NETTOS 128 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb)
{
	struct iphdr *iph;

	if (skb->len < sizeof(struct iphdr))
		goto out_err;

	/*
	 *	Get the copied header of the packet that caused the redirect
	 */
	if (!FUNC6(skb, sizeof(struct iphdr)))
		goto out;

	iph = (struct iphdr *)skb->data;

	switch (FUNC2(skb)->code & 7) {
	case ICMP_REDIR_NET:
	case ICMP_REDIR_NETTOS:
		/*
		 * As per RFC recommendations now handle it as a host redirect.
		 */
	case ICMP_REDIR_HOST:
	case ICMP_REDIR_HOSTTOS:
		FUNC4(FUNC3(skb)->saddr, iph->daddr,
			       FUNC2(skb)->un.gateway,
			       iph->saddr, skb->dev);
		break;
	}

	/* Ping wants to see redirects.
         * Let's pretend they are errors of sorts... */
	if (iph->protocol == IPPROTO_ICMP &&
	    iph->ihl >= 5 &&
	    FUNC6(skb, (iph->ihl<<2)+8)) {
		FUNC5(skb, FUNC2(skb)->un.gateway);
	}

out:
	return;
out_err:
	FUNC0(FUNC1(skb->dev), ICMP_MIB_INERRORS);
	goto out;
}