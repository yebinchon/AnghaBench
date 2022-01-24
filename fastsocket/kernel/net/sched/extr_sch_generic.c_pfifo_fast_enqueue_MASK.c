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
struct sk_buff {size_t priority; } ;
struct pfifo_fast_priv {int bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ tx_queue_len; } ;

/* Variables and functions */
 size_t TC_PRIO_MAX ; 
 int FUNC0 (struct sk_buff*,struct Qdisc*,struct sk_buff_head*) ; 
 struct sk_buff_head* FUNC1 (struct pfifo_fast_priv*,int) ; 
 int* prio2band ; 
 TYPE_2__* FUNC2 (struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 struct pfifo_fast_priv* FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct Qdisc* qdisc)
{
	if (FUNC5(&qdisc->q) < FUNC2(qdisc)->tx_queue_len) {
		int band = prio2band[skb->priority & TC_PRIO_MAX];
		struct pfifo_fast_priv *priv = FUNC4(qdisc);
		struct sk_buff_head *list = FUNC1(priv, band);

		priv->bitmap |= (1 << band);
		qdisc->q.qlen++;
		return FUNC0(skb, qdisc, list);
	}

	return FUNC3(skb, qdisc);
}