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
struct TYPE_2__ {int len; int /*<<< orphan*/  iov; } ;
struct tcp_sock {int copied_seq; TYPE_1__ ucopy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb, int hlen)
{
	struct tcp_sock *tp = FUNC6(sk);
	int chunk = skb->len - hlen;
	int err;

	FUNC1();
	if (FUNC4(skb))
		err = FUNC3(skb, hlen, tp->ucopy.iov, chunk);
	else
		err = FUNC2(skb, hlen,
						       tp->ucopy.iov);

	if (!err) {
		tp->ucopy.len -= chunk;
		tp->copied_seq += chunk;
		FUNC5(sk);
	}

	FUNC0();
	return err;
}