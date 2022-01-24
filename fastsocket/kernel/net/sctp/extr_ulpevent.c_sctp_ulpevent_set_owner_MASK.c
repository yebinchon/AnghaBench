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
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {struct sctp_association* asoc; int /*<<< orphan*/  rmem_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {TYPE_1__ base; int /*<<< orphan*/  rmem_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*) ; 
 struct sk_buff* FUNC2 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct sctp_ulpevent *event,
					   const struct sctp_association *asoc)
{
	struct sk_buff *skb;

	/* Cast away the const, as we are just wanting to
	 * bump the reference count.
	 */
	FUNC1((struct sctp_association *)asoc);
	skb = FUNC2(event);
	event->asoc = (struct sctp_association *)asoc;
	FUNC0(event->rmem_len, &event->asoc->rmem_alloc);
	FUNC3(skb, asoc->base.sk);
}