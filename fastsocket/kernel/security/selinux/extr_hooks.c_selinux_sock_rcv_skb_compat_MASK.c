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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sid; } ;
struct sk_buff {int /*<<< orphan*/  secmark; int /*<<< orphan*/  iif; } ;
struct TYPE_3__ {int /*<<< orphan*/  family; int /*<<< orphan*/  netif; } ;
struct TYPE_4__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET ; 
 int /*<<< orphan*/  PACKET__RECV ; 
 int /*<<< orphan*/  PEER__RECV ; 
 int /*<<< orphan*/  SECCLASS_PACKET ; 
 int /*<<< orphan*/  SECCLASS_PEER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_security_struct*,struct sk_buff*,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC4 (struct sk_buff*,struct common_audit_data*,char**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ selinux_policycap_netpeer ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb,
				       u16 family)
{
	int err = 0;
	struct sk_security_struct *sksec = sk->sk_security;
	u32 peer_sid;
	u32 sk_sid = sksec->sid;
	struct common_audit_data ad;
	char *addrp;

	FUNC0(&ad, NET);
	ad.u.net.netif = skb->iif;
	ad.u.net.family = family;
	err = FUNC4(skb, &ad, &addrp, 1, NULL);
	if (err)
		return err;

	if (FUNC5()) {
		err = FUNC1(sk_sid, skb->secmark, SECCLASS_PACKET,
				   PACKET__RECV, &ad);
		if (err)
			return err;
	}

	if (selinux_policycap_netpeer) {
		err = FUNC6(skb, family, &peer_sid);
		if (err)
			return err;
		err = FUNC1(sk_sid, peer_sid,
				   SECCLASS_PEER, PEER__RECV, &ad);
		if (err)
			FUNC2(skb, err, 0);
	} else {
		err = FUNC3(sksec, skb, family, &ad);
		if (err)
			return err;
		err = FUNC7(sksec->sid, skb, &ad);
	}

	return err;
}