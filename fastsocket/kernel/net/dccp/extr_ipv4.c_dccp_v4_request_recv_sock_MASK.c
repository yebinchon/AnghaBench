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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  id; int /*<<< orphan*/  mc_ttl; int /*<<< orphan*/  mc_index; int /*<<< orphan*/ * opt; int /*<<< orphan*/  saddr; int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  daddr; } ;
struct inet_request_sock {int /*<<< orphan*/ * opt; int /*<<< orphan*/  loc_addr; int /*<<< orphan*/  rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_LISTENDROPS ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sock*) ; 
 struct sock* FUNC3 (struct sock*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 struct dst_entry* FUNC7 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC9 (struct request_sock*) ; 
 struct inet_sock* FUNC10 (struct sock*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

struct sock *FUNC16(struct sock *sk, struct sk_buff *skb,
				       struct request_sock *req,
				       struct dst_entry *dst)
{
	struct inet_request_sock *ireq;
	struct inet_sock *newinet;
	struct sock *newsk;

	if (FUNC12(sk))
		goto exit_overflow;

	if (dst == NULL && (dst = FUNC7(sk, req)) == NULL)
		goto exit;

	newsk = FUNC3(sk, req, skb);
	if (newsk == NULL)
		goto exit_nonewsk;

	FUNC13(newsk, dst);

	newinet		   = FUNC10(newsk);
	ireq		   = FUNC9(req);
	newinet->daddr	   = ireq->rmt_addr;
	newinet->rcv_saddr = ireq->loc_addr;
	newinet->saddr	   = ireq->loc_addr;
	newinet->opt	   = ireq->opt;
	ireq->opt	   = NULL;
	newinet->mc_index  = FUNC8(skb);
	newinet->mc_ttl	   = FUNC11(skb)->ttl;
	newinet->id	   = jiffies;

	FUNC4(newsk, FUNC5(dst));

	if (FUNC2(sk, newsk) < 0) {
		FUNC15(newsk);
		goto exit;
	}
	FUNC1(newsk);

	return newsk;

exit_overflow:
	FUNC0(FUNC14(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
	FUNC6(dst);
exit:
	FUNC0(FUNC14(sk), LINUX_MIB_LISTENDROPS);
	return NULL;
}