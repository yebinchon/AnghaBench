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
struct sock {int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; struct sctp_association* asoc; } ;
struct TYPE_3__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  sndbuf_used; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  truesize; scalar_t__ cb; int /*<<< orphan*/  destructor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_association*) ; 
 int /*<<< orphan*/  sctp_wfree ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct sock*) ; 

__attribute__((used)) static inline void FUNC5(struct sctp_chunk *chunk)
{
	struct sctp_association *asoc = chunk->asoc;
	struct sock *sk = asoc->base.sk;

	/* The sndbuf space is tracked per association.  */
	FUNC2(asoc);

	FUNC4(chunk->skb, sk);

	chunk->skb->destructor = sctp_wfree;
	/* Save the chunk pointer in skb for sctp_wfree to use later.  */
	*((struct sctp_chunk **)(chunk->skb->cb)) = chunk;

	asoc->sndbuf_used += FUNC0(chunk) +
				sizeof(struct sk_buff) +
				sizeof(struct sctp_chunk);

	FUNC1(sizeof(struct sctp_chunk), &sk->sk_wmem_alloc);
	sk->sk_wmem_queued += chunk->skb->truesize;
	FUNC3(sk, chunk->skb->truesize);
}