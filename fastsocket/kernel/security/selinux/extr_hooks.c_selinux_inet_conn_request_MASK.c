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
typedef  void* u32 ;
typedef  scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sid; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct request_sock {void* peer_secid; void* secid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,void**) ; 
 int FUNC2 (struct request_sock*,scalar_t__) ; 
 int FUNC3 (struct sk_buff*,scalar_t__,void**) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb,
				     struct request_sock *req)
{
	struct sk_security_struct *sksec = sk->sk_security;
	int err;
	u16 family = sk->sk_family;
	u32 connsid;
	u32 peersid;

	/* handle mapped IPv4 packets arriving via IPv6 sockets */
	if (family == PF_INET6 && skb->protocol == FUNC0(ETH_P_IP))
		family = PF_INET;

	err = FUNC3(skb, family, &peersid);
	if (err)
		return err;
	err = FUNC1(sksec->sid, peersid, &connsid);
	if (err)
		return err;
	req->secid = connsid;
	req->peer_secid = peersid;

	return FUNC2(req, family);
}