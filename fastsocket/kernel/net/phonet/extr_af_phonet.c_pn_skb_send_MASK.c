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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {int dummy; } ;
struct pn_sock {int /*<<< orphan*/  sobject; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int IFF_UP ; 
 scalar_t__ PN_NO_ADDR ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct net_device*,scalar_t__) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pn_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sockaddr_pn const*) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_pn const*) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_pn const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 

int FUNC14(struct sock *sk, struct sk_buff *skb,
		const struct sockaddr_pn *target)
{
	struct net_device *dev;
	struct pn_sock *pn = FUNC9(sk);
	int err;
	u16 src;
	u8 daddr = FUNC10(target), saddr = PN_NO_ADDR;

	err = -EHOSTUNREACH;
	if (sk->sk_bound_dev_if)
		dev = FUNC0(FUNC13(sk), sk->sk_bound_dev_if);
	else
		dev = FUNC4(FUNC13(sk));
	if (!dev || !(dev->flags & IFF_UP))
		goto drop;

	saddr = FUNC3(dev, daddr);
	if (saddr == PN_NO_ADDR)
		goto drop;

	src = pn->sobject;
	if (!FUNC5(src))
		src = FUNC7(saddr, FUNC6(src));

	err = FUNC8(skb, dev, FUNC11(target),
			src, FUNC12(target), 0);
	FUNC1(dev);
	return err;

drop:
	FUNC2(skb);
	if (dev)
		FUNC1(dev);
	return err;
}