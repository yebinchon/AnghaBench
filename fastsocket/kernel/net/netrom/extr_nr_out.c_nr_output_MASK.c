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
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int NR_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  NR_MORE_FLAG ; 
 int NR_TRANSPORT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*,int) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC10 (struct sock*,int,int /*<<< orphan*/ ,int*) ; 

void FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff *skbn;
	unsigned char transport[NR_TRANSPORT_LEN];
	int err, frontlen, len;

	if (skb->len - NR_TRANSPORT_LEN > NR_MAX_PACKET_SIZE) {
		/* Save a copy of the Transport Header */
		FUNC2(skb, transport, NR_TRANSPORT_LEN);
		FUNC5(skb, NR_TRANSPORT_LEN);

		frontlen = FUNC4(skb);

		while (skb->len > 0) {
			if ((skbn = FUNC10(sk, frontlen + NR_MAX_PACKET_SIZE, 0, &err)) == NULL)
				return;

			FUNC9(skbn, frontlen);

			len = (NR_MAX_PACKET_SIZE > skb->len) ? skb->len : NR_MAX_PACKET_SIZE;

			/* Copy the user data */
			FUNC2(skb, FUNC7(skbn, len), len);
			FUNC5(skb, len);

			/* Duplicate the Transport Header */
			FUNC6(skbn, NR_TRANSPORT_LEN);
			FUNC3(skbn, transport,
						NR_TRANSPORT_LEN);
			if (skb->len > 0)
				skbn->data[4] |= NR_MORE_FLAG;

			FUNC8(&sk->sk_write_queue, skbn); /* Throw it on the queue */
		}

		FUNC0(skb);
	} else {
		FUNC8(&sk->sk_write_queue, skb);		/* Throw it on the queue */
	}

	FUNC1(sk);
}