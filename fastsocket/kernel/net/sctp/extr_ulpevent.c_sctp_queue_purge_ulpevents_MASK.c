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
struct sk_buff {scalar_t__ len; } ;
struct sctp_ulpevent {int dummy; } ;

/* Variables and functions */
 struct sctp_ulpevent* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 

unsigned int FUNC4(struct sk_buff_head *list)
{
	struct sk_buff *skb;
	unsigned int data_unread = 0;

	while ((skb = FUNC3(list)) != NULL) {
		struct sctp_ulpevent *event = FUNC0(skb);

		if (!FUNC2(event))
			data_unread += skb->len;

		FUNC1(event);
	}

	return data_unread;
}