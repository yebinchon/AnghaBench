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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct nr_sock {int /*<<< orphan*/  frag_queue; int /*<<< orphan*/  reseq_queue; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 struct nr_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sock *sk)
{
	struct nr_sock *nr = FUNC0(sk);

	FUNC1(&sk->sk_write_queue);
	FUNC1(&nr->ack_queue);
	FUNC1(&nr->reseq_queue);
	FUNC1(&nr->frag_queue);
}