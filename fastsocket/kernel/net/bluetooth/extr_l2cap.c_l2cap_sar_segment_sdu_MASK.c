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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int /*<<< orphan*/ * sk_send_head; } ;
struct sk_buff_head {int /*<<< orphan*/ * next; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct l2cap_pinfo {size_t max_pdu_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  L2CAP_SDU_CONTINUE ; 
 int /*<<< orphan*/  L2CAP_SDU_END ; 
 int /*<<< orphan*/  L2CAP_SDU_START ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sock*,struct msghdr*,size_t,int /*<<< orphan*/ ,size_t) ; 
 struct l2cap_pinfo* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct sock *sk, struct msghdr *msg, size_t len)
{
	struct l2cap_pinfo *pi = FUNC6(sk);
	struct sk_buff *skb;
	struct sk_buff_head sar_queue;
	u16 control;
	size_t size = 0;

	FUNC3(&sar_queue);
	control = L2CAP_SDU_START;
	skb = FUNC5(sk, msg, pi->max_pdu_size, control, len);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC4(&sar_queue, skb);
	len -= pi->max_pdu_size;
	size +=pi->max_pdu_size;
	control = 0;

	while (len > 0) {
		size_t buflen;

		if (len > pi->max_pdu_size) {
			control |= L2CAP_SDU_CONTINUE;
			buflen = pi->max_pdu_size;
		} else {
			control |= L2CAP_SDU_END;
			buflen = len;
		}

		skb = FUNC5(sk, msg, buflen, control, 0);
		if (FUNC0(skb)) {
			FUNC7(&sar_queue);
			return FUNC1(skb);
		}

		FUNC4(&sar_queue, skb);
		len -= buflen;
		size += buflen;
		control = 0;
	}
	FUNC8(&sar_queue, FUNC2(sk));
	if (sk->sk_send_head == NULL)
		sk->sk_send_head = sar_queue.next;

	return size;
}