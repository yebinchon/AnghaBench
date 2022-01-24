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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct nr_sock {scalar_t__ fraglen; int /*<<< orphan*/  frag_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NR_NETWORK_LEN ; 
 scalar_t__ NR_TRANSPORT_LEN ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nr_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb, int more)
{
	struct sk_buff *skbo, *skbn = skb;
	struct nr_sock *nr = FUNC2(sk);

	FUNC6(skb, NR_NETWORK_LEN + NR_TRANSPORT_LEN);

	FUNC3(sk);

	if (more) {
		nr->fraglen += skb->len;
		FUNC8(&nr->frag_queue, skb);
		return 0;
	}

	if (!more && nr->fraglen > 0) {	/* End of fragment */
		nr->fraglen += skb->len;
		FUNC8(&nr->frag_queue, skb);

		if ((skbn = FUNC0(nr->fraglen, GFP_ATOMIC)) == NULL)
			return 1;

		FUNC9(skbn);

		while ((skbo = FUNC5(&nr->frag_queue)) != NULL) {
			FUNC4(skbo,
						  FUNC7(skbn, skbo->len),
						  skbo->len);
			FUNC1(skbo);
		}

		nr->fraglen = 0;
	}

	return FUNC10(sk, skbn);
}