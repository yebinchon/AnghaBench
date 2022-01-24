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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct sk_buff {void* len; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct lec_priv {void* sizeoftlvs; int /*<<< orphan*/ * tlvs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l_associate_req ; 
 struct lec_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct lec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/  const*,void*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, const u8 *lan_dst,
			       const u8 *tlvs, u32 sizeoftlvs)
{
	int retval;
	struct sk_buff *skb;
	struct lec_priv *priv = FUNC4(dev);

	if (FUNC1(lan_dst, dev->dev_addr))
		return (0);	/* not our mac address */

	FUNC2(priv->tlvs);	/* NULL if there was no previous association */

	priv->tlvs = FUNC3(tlvs, sizeoftlvs, GFP_KERNEL);
	if (priv->tlvs == NULL)
		return (0);
	priv->sizeoftlvs = sizeoftlvs;

	skb = FUNC0(sizeoftlvs, GFP_ATOMIC);
	if (skb == NULL)
		return 0;
	skb->len = sizeoftlvs;
	FUNC7(skb, tlvs, sizeoftlvs);
	retval = FUNC6(priv, l_associate_req, NULL, NULL, skb);
	if (retval != 0)
		FUNC5("lec.c: lane2_associate_req() failed\n");
	/*
	 * If the previous association has changed we must
	 * somehow notify other LANE entities about the change
	 */
	return (1);
}