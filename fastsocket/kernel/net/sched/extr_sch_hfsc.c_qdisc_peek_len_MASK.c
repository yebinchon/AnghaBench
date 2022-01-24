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
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct Qdisc*) ; 
 struct sk_buff* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static unsigned int
FUNC3(struct Qdisc *sch)
{
	struct sk_buff *skb;
	unsigned int len;

	skb = sch->ops->peek(sch);
	if (skb == NULL) {
		FUNC1("qdisc_peek_len", sch);
		return 0;
	}
	len = FUNC0(skb);

	return len;
}