#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int /*<<< orphan*/  tsn; } ;
struct sctp_tsnmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_3__ {struct sctp_tsnmap tsn_map; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 struct sctp_ulpevent* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tsnmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static __u16 FUNC5(struct sctp_ulpq *ulpq,
		struct sk_buff_head *list, __u16 needed)
{
	__u16 freed = 0;
	__u32 tsn;
	struct sk_buff *skb;
	struct sctp_ulpevent *event;
	struct sctp_tsnmap *tsnmap;

	tsnmap = &ulpq->asoc->peer.tsn_map;

	while ((skb = FUNC0(list)) != NULL) {
		freed += FUNC4(skb);
		event = FUNC1(skb);
		tsn = event->tsn;

		FUNC3(event);
		FUNC2(tsnmap, tsn);
		if (freed >= needed)
			return freed;
	}

	return freed;
}