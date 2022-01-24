#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sid; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  secmark; int /*<<< orphan*/  iif; } ;
struct TYPE_3__ {scalar_t__ family; int /*<<< orphan*/  netif; } ;
struct TYPE_4__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NET ; 
 int /*<<< orphan*/  PACKET__RECV ; 
 int /*<<< orphan*/  PEER__RECV ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  SECCLASS_PACKET ; 
 int /*<<< orphan*/  SECCLASS_PEER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct common_audit_data*,char**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_policycap_netpeer ; 
 int FUNC7 () ; 
 int FUNC8 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sock*,struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	int err;
	struct sk_security_struct *sksec = sk->sk_security;
	u16 family = sk->sk_family;
	u32 sk_sid = sksec->sid;
	struct common_audit_data ad;
	char *addrp;
	u8 secmark_active;
	u8 peerlbl_active;

	if (family != PF_INET && family != PF_INET6)
		return 0;

	/* Handle mapped IPv4 packets arriving via IPv6 sockets */
	if (family == PF_INET6 && skb->protocol == FUNC2(ETH_P_IP))
		family = PF_INET;

	/* If any sort of compatibility mode is enabled then handoff processing
	 * to the selinux_sock_rcv_skb_compat() function to deal with the
	 * special handling.  We do this in an attempt to keep this function
	 * as fast and as clean as possible. */
	if (!selinux_policycap_netpeer)
		return FUNC9(sk, skb, family);

	secmark_active = FUNC7();
	peerlbl_active = FUNC3() || FUNC10();
	if (!secmark_active && !peerlbl_active)
		return 0;

	FUNC0(&ad, NET);
	ad.u.net.netif = skb->iif;
	ad.u.net.family = family;
	err = FUNC6(skb, &ad, &addrp, 1, NULL);
	if (err)
		return err;

	if (peerlbl_active) {
		u32 peer_sid;

		err = FUNC8(skb, family, &peer_sid);
		if (err)
			return err;
		err = FUNC4(skb->iif, addrp, family,
					       peer_sid, &ad);
		if (err) {
			FUNC5(skb, err, 0);
			return err;
		}
		err = FUNC1(sk_sid, peer_sid, SECCLASS_PEER,
				   PEER__RECV, &ad);
		if (err) {
			FUNC5(skb, err, 0);
			return err;
		}
	}

	if (secmark_active) {
		err = FUNC1(sk_sid, skb->secmark, SECCLASS_PACKET,
				   PACKET__RECV, &ad);
		if (err)
			return err;
	}

	return err;
}