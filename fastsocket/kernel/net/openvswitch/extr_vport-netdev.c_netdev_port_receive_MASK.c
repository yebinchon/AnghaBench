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
struct vport {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct vport *vport, struct sk_buff *skb)
{
	if (FUNC6(!vport))
		goto error;

	if (FUNC6(FUNC5(skb)))
		goto error;

	/* Make our own copy of the packet.  Otherwise we will mangle the
	 * packet for anyone who came before us (e.g. tcpdump via AF_PACKET).
	 */
	skb = FUNC4(skb, GFP_ATOMIC);
	if (FUNC6(!skb))
		return;

	FUNC3(skb, ETH_HLEN);
	FUNC1(skb, skb->data, ETH_HLEN);

	FUNC2(vport, skb, NULL);
	return;

error:
	FUNC0(skb);
}