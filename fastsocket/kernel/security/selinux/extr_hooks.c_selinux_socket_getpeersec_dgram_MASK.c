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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct socket {TYPE_1__* sk; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ PF_UNIX ; 
 scalar_t__ SECSID_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sk_buff *skb, u32 *secid)
{
	u32 peer_secid = SECSID_NULL;
	u16 family;

	if (skb && skb->protocol == FUNC1(ETH_P_IP))
		family = PF_INET;
	else if (skb && skb->protocol == FUNC1(ETH_P_IPV6))
		family = PF_INET6;
	else if (sock)
		family = sock->sk->sk_family;
	else
		goto out;

	if (sock && family == PF_UNIX)
		FUNC2(FUNC0(sock), &peer_secid);
	else if (skb)
		FUNC3(skb, family, &peer_secid);

out:
	*secid = peer_secid;
	if (peer_secid == SECSID_NULL)
		return -EINVAL;
	return 0;
}