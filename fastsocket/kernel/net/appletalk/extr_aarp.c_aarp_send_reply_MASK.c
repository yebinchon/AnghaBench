#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct net_device* dev; void* protocol; } ;
struct net_device {int hard_header_len; unsigned char* dev_addr; } ;
struct elapaarp {int /*<<< orphan*/  pa_dst_node; int /*<<< orphan*/  pa_dst_net; scalar_t__ pa_dst_zero; int /*<<< orphan*/  hw_dst; int /*<<< orphan*/  pa_src_node; int /*<<< orphan*/  pa_src_net; scalar_t__ pa_src_zero; int /*<<< orphan*/  hw_src; void* function; int /*<<< orphan*/  pa_len; int /*<<< orphan*/  hw_len; void* pa_type; void* hw_type; } ;
struct atalk_addr {int /*<<< orphan*/  s_node; int /*<<< orphan*/  s_net; } ;
struct TYPE_3__ {int header_length; int /*<<< orphan*/  (* request ) (TYPE_1__*,struct sk_buff*,unsigned char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AARP_HW_TYPE_ETHERNET ; 
 int /*<<< orphan*/  AARP_PA_ALEN ; 
 int /*<<< orphan*/  AARP_REPLY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_ATALK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* aarp_dl ; 
 struct elapaarp* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct sk_buff*,unsigned char*) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev, struct atalk_addr *us,
			    struct atalk_addr *them, unsigned char *sha)
{
	struct elapaarp *eah;
	int len = dev->hard_header_len + sizeof(*eah) + aarp_dl->header_length;
	struct sk_buff *skb = FUNC1(len, GFP_ATOMIC);

	if (!skb)
		return;

	/* Set up the buffer */
	FUNC6(skb, dev->hard_header_len + aarp_dl->header_length);
	FUNC7(skb);
	FUNC8(skb);
	FUNC5(skb, sizeof(*eah));
	skb->protocol    = FUNC2(ETH_P_ATALK);
	skb->dev	 = dev;
	eah		 = FUNC0(skb);

	/* Set up the ARP */
	eah->hw_type	 = FUNC2(AARP_HW_TYPE_ETHERNET);
	eah->pa_type	 = FUNC2(ETH_P_ATALK);
	eah->hw_len	 = ETH_ALEN;
	eah->pa_len	 = AARP_PA_ALEN;
	eah->function	 = FUNC2(AARP_REPLY);

	FUNC3(eah->hw_src, dev->dev_addr, ETH_ALEN);

	eah->pa_src_zero = 0;
	eah->pa_src_net	 = us->s_net;
	eah->pa_src_node = us->s_node;

	if (!sha)
		FUNC4(eah->hw_dst, '\0', ETH_ALEN);
	else
		FUNC3(eah->hw_dst, sha, ETH_ALEN);

	eah->pa_dst_zero = 0;
	eah->pa_dst_net	 = them->s_net;
	eah->pa_dst_node = them->s_node;

	/* Send it */
	aarp_dl->request(aarp_dl, skb, sha);
}