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
typedef  int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct phonethdr {int /*<<< orphan*/  pn_length; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 struct net* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct net*,struct sockaddr_pn*) ; 
 struct phonethdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct net_device *dev,
			struct packet_type *pkttype,
			struct net_device *orig_dev)
{
	struct net *net = FUNC1(dev);
	struct phonethdr *ph;
	struct sockaddr_pn sa;
	u16 len;

	/* check we have at least a full Phonet header */
	if (!FUNC9(skb, sizeof(struct phonethdr)))
		goto out;

	/* check that the advertised length is correct */
	ph = FUNC6(skb);
	len = FUNC2(&ph->pn_length);
	if (len < 2)
		goto out;
	len -= 2;
	if ((len > skb->len) || FUNC10(skb, len))
		goto out;
	FUNC14(skb);

	FUNC7(skb, &sa);

	/* check if we are the destination */
	if (FUNC4(net, FUNC8(&sa)) == 0) {
		/* Phonet packet input */
		struct sock *sk = FUNC5(net, &sa);

		if (sk)
			return FUNC13(sk, skb, 0);

		if (FUNC0(skb)) {
			FUNC11(skb);
			FUNC12(skb);
		}
	}

out:
	FUNC3(skb);
	return NET_RX_DROP;
}