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
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct gether {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  REMOTE_NDIS_PACKET_MSG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

int FUNC7(struct gether *port,
			struct sk_buff *skb,
			struct sk_buff_head *list)
{
	/* tmp points to a struct rndis_packet_msg_type */
	__le32		*tmp = (void *) skb->data;

	/* MessageType, MessageLength */
	if (FUNC0(REMOTE_NDIS_PACKET_MSG)
			!= FUNC2(tmp++)) {
		FUNC1(skb);
		return -EINVAL;
	}
	tmp++;

	/* DataOffset, DataLength */
	if (!FUNC4(skb, FUNC3(tmp++) + 8)) {
		FUNC1(skb);
		return -EOVERFLOW;
	}
	FUNC6(skb, FUNC3(tmp++));

	FUNC5(list, skb);
	return 0;
}