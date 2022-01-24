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
struct x25_sock {int /*<<< orphan*/  interrupt_out_queue; int /*<<< orphan*/  interrupt_in_queue; int /*<<< orphan*/  fragment_queue; int /*<<< orphan*/  ack_queue; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_X25 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock* FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  x25_proto ; 
 struct x25_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC4(struct net *net)
{
	struct x25_sock *x25;
	struct sock *sk = FUNC0(net, AF_X25, GFP_ATOMIC, &x25_proto);

	if (!sk)
		goto out;

	FUNC2(NULL, sk);

	x25 = FUNC3(sk);
	FUNC1(&x25->ack_queue);
	FUNC1(&x25->fragment_queue);
	FUNC1(&x25->interrupt_in_queue);
	FUNC1(&x25->interrupt_out_queue);
out:
	return sk;
}