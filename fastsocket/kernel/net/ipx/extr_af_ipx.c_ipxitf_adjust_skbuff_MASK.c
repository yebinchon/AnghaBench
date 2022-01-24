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
struct sk_buff {unsigned char* head; int len; scalar_t__ cb; } ;
struct ipx_interface {int if_ipx_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct ipx_interface *intrfc,
					    struct sk_buff *skb)
{
	struct sk_buff *skb2;
	int in_offset = (unsigned char *)FUNC1(skb) - skb->head;
	int out_offset = intrfc->if_ipx_offset;
	int len;

	/* Hopefully, most cases */
	if (in_offset >= out_offset)
		return skb;

	/* Need new SKB */
	len  = skb->len + out_offset;
	skb2 = FUNC0(len, GFP_ATOMIC);
	if (skb2) {
		FUNC5(skb2, out_offset);
		FUNC6(skb2);
		FUNC7(skb2);
		FUNC4(skb2, skb->len);
		FUNC3(FUNC1(skb2), FUNC1(skb), skb->len);
		FUNC3(skb2->cb, skb->cb, sizeof(skb->cb));
	}
	FUNC2(skb);
	return skb2;
}