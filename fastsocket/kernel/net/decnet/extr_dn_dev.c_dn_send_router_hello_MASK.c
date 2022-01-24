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
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_neigh {int dummy; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct TYPE_2__ {int forwarding; scalar_t__ t3; int /*<<< orphan*/  priority; } ;
struct dn_dev {TYPE_1__ parms; scalar_t__ router; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DN_RT_INFO_L1RT ; 
 int /*<<< orphan*/  DN_RT_INFO_L2RT ; 
 int DN_RT_PKT_CNTL ; 
 int DN_RT_PKT_ERTH ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dn_neigh*,struct dn_dev*,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,unsigned char*,int) ; 
 int /*<<< orphan*/  dn_rt_all_end_mcast ; 
 int /*<<< orphan*/  dn_rt_all_rt_mcast ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct net_device*) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int) ; 
 unsigned char* FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev, struct dn_ifaddr *ifa)
{
	int n;
	struct dn_dev *dn_db = dev->dn_ptr;
	struct dn_neigh *dn = (struct dn_neigh *)dn_db->router;
	struct sk_buff *skb;
	size_t size;
	unsigned char *ptr;
	unsigned char *i1, *i2;
	__le16 *pktlen;
	char *src;

	if (FUNC7(dev) < (26 + 7))
		return;

	n = FUNC7(dev) - 26;
	n /= 7;

	if (n > 32)
		n = 32;

	size = 2 + 26 + 7 * n;

	if ((skb = FUNC1(NULL, size, GFP_ATOMIC)) == NULL)
		return;

	skb->dev = dev;
	ptr = FUNC10(skb, size);

	*ptr++ = DN_RT_PKT_CNTL | DN_RT_PKT_ERTH;
	*ptr++ = 2; /* ECO */
	*ptr++ = 0;
	*ptr++ = 0;
	FUNC3(ptr, ifa->ifa_local);
	src = ptr;
	ptr += ETH_ALEN;
	*ptr++ = dn_db->parms.forwarding == 1 ?
			DN_RT_INFO_L1RT : DN_RT_INFO_L2RT;
	*((__le16 *)ptr) = FUNC0(FUNC7(dev));
	ptr += 2;
	*ptr++ = dn_db->parms.priority; /* Priority */
	*ptr++ = 0; /* Area: Reserved */
	*((__le16 *)ptr) = FUNC0((unsigned short)dn_db->parms.t3);
	ptr += 2;
	*ptr++ = 0; /* MPD: Reserved */
	i1 = ptr++;
	FUNC6(ptr, 0, 7); /* Name: Reserved */
	ptr += 7;
	i2 = ptr++;

	n = FUNC4(dev, ptr, n);

	*i2 = 7 * n;
	*i1 = 8 + *i2;

	FUNC12(skb, (27 + *i2));

	pktlen = (__le16 *)FUNC9(skb, 2);
	*pktlen = FUNC0(skb->len - 2);

	FUNC11(skb);

	if (FUNC2(dn, dn_db, ifa)) {
		struct sk_buff *skb2 = FUNC8(skb, GFP_ATOMIC);
		if (skb2) {
			FUNC5(skb2, dn_rt_all_end_mcast, src);
		}
	}

	FUNC5(skb, dn_rt_all_rt_mcast, src);
}