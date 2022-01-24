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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int) ;scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {unsigned int truesize; int len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int) ; 

__attribute__((used)) static __inline__ int FUNC6(struct sock *sk, struct sk_buff *skb, int sig, struct sk_buff_head *queue)
{
	int err;
	int skb_len;

	/* Cast skb->rcvbuf to unsigned... It's pointless, but reduces
	   number of warnings when compiling with -W --ANK
	 */
	if (FUNC0(&sk->sk_rmem_alloc) + skb->truesize >=
	    (unsigned)sk->sk_rcvbuf) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC1(sk, skb);
	if (err)
		goto out;

	skb_len = skb->len;
	FUNC3(skb, sk);
	FUNC2(queue, skb);

	if (!FUNC4(sk, SOCK_DEAD))
		sk->sk_data_ready(sk, skb_len);
out:
	return err;
}