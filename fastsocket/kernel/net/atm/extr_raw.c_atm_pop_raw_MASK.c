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
struct sock {int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atm_vcc {int /*<<< orphan*/  vci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct atm_vcc *vcc,struct sk_buff *skb)
{
	struct sock *sk = FUNC3(vcc);

	FUNC2("APopR (%d) %d -= %d\n", vcc->vci,
		FUNC4(sk), skb->truesize);
	FUNC0(skb->truesize, &sk->sk_wmem_alloc);
	FUNC1(skb);
	sk->sk_write_space(sk);
}