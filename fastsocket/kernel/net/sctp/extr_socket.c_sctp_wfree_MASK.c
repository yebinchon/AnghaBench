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
struct sock {int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {scalar_t__ truesize; scalar_t__ cb; } ;
struct sctp_chunk {struct sctp_association* asoc; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  sndbuf_used; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct sctp_association *asoc;
	struct sctp_chunk *chunk;
	struct sock *sk;

	/* Get the saved chunk pointer.  */
	chunk = *((struct sctp_chunk **)(skb->cb));
	asoc = chunk->asoc;
	sk = asoc->base.sk;
	asoc->sndbuf_used -= FUNC0(chunk) +
				sizeof(struct sk_buff) +
				sizeof(struct sctp_chunk);

	FUNC2(sizeof(struct sctp_chunk), &sk->sk_wmem_alloc);

	/*
	 * This undoes what is done via sctp_set_owner_w and sk_mem_charge
	 */
	sk->sk_wmem_queued   -= skb->truesize;
	FUNC4(sk, skb->truesize);

	FUNC5(skb);
	FUNC1(asoc);

	FUNC3(asoc);
}