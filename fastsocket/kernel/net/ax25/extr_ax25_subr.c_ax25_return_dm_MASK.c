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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  hard_header_len; } ;
typedef  int /*<<< orphan*/  ax25_digi ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 char AX25_DM ; 
 int /*<<< orphan*/  AX25_MODULUS ; 
 char AX25_PF ; 
 int /*<<< orphan*/  AX25_RESPONSE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 char* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

void FUNC9(struct net_device *dev, ax25_address *src, ax25_address *dest, ax25_digi *digi)
{
	struct sk_buff *skb;
	char *dptr;
	ax25_digi retdigi;

	if (dev == NULL)
		return;

	if ((skb = FUNC0(dev->hard_header_len + 1, GFP_ATOMIC)) == NULL)
		return;	/* Next SABM will get DM'd */

	FUNC7(skb, dev->hard_header_len);
	FUNC8(skb);

	FUNC3(digi, &retdigi);

	dptr = FUNC6(skb, 1);

	*dptr = AX25_DM | AX25_PF;

	/*
	 *	Do the address ourselves
	 */
	dptr  = FUNC5(skb, FUNC2(digi));
	dptr += FUNC1(dptr, dest, src, &retdigi, AX25_RESPONSE, AX25_MODULUS);

	FUNC4(skb, dev);
}