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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_sndbuf; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct sock* FUNC5 (struct atm_vcc*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct atm_vcc *vcc,unsigned int size)
{
	struct sk_buff *skb;
	struct sock *sk = FUNC5(vcc);

	if (FUNC6(sk) && !FUNC1(vcc, size)) {
		FUNC3("Sorry: wmem_alloc = %d, size = %d, sndbuf = %d\n",
			FUNC6(sk), size,
			sk->sk_sndbuf);
		return NULL;
	}
	while (!(skb = FUNC0(size, GFP_KERNEL)))
		FUNC4();
	FUNC3("AlTx %d += %d\n", FUNC6(sk), skb->truesize);
	FUNC2(skb->truesize, &sk->sk_wmem_alloc);
	return skb;
}