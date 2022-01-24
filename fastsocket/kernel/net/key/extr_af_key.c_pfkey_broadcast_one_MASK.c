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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  users; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct sk_buff **skb2,
			       gfp_t allocation, struct sock *sk)
{
	int err = -ENOBUFS;

	FUNC6(sk);
	if (*skb2 == NULL) {
		if (FUNC1(&skb->users) != 1) {
			*skb2 = FUNC2(skb, allocation);
		} else {
			*skb2 = skb;
			FUNC0(&skb->users);
		}
	}
	if (*skb2 != NULL) {
		if (FUNC1(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf) {
			FUNC3(*skb2);
			FUNC5(*skb2, sk);
			FUNC4(&sk->sk_receive_queue, *skb2);
			sk->sk_data_ready(sk, (*skb2)->len);
			*skb2 = NULL;
			err = 0;
		}
	}
	FUNC7(sk);
	return err;
}