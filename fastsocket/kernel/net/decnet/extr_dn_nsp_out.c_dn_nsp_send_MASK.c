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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_route_caps; int /*<<< orphan*/  sk_dst_cache; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {struct sock* sk; } ;
struct flowi {int /*<<< orphan*/  proto; void* fld_dst; void* fld_src; int /*<<< orphan*/  oif; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_scp {int /*<<< orphan*/  peer; int /*<<< orphan*/  addr; int /*<<< orphan*/  stamp; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNPROTO_NSP ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi*,struct dn_scp*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 struct dst_entry* FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct dn_scp *scp = FUNC0(sk);
	struct dst_entry *dst;
	struct flowi fl;

	FUNC9(skb);
	scp->stamp = jiffies;

	dst = FUNC6(sk, 0);
	if (dst) {
try_again:
		FUNC8(skb, dst);
		FUNC4(skb);
		return;
	}

	FUNC5(&fl, 0, sizeof(fl));
	fl.oif = sk->sk_bound_dev_if;
	fl.fld_src = FUNC2(&scp->addr);
	fl.fld_dst = FUNC2(&scp->peer);
	FUNC3(&fl, scp);
	fl.proto = DNPROTO_NSP;
	if (FUNC1(&sk->sk_dst_cache, &fl, sk, 0) == 0) {
		dst = FUNC7(sk);
		sk->sk_route_caps = dst->dev->features;
		goto try_again;
	}

	sk->sk_err = EHOSTUNREACH;
	if (!FUNC10(sk, SOCK_DEAD))
		sk->sk_state_change(sk);
}