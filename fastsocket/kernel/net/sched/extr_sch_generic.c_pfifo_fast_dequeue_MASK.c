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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {size_t bitmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*,struct sk_buff_head*) ; 
 struct sk_buff_head* FUNC1 (struct pfifo_fast_priv*,int) ; 
 int* bitmap2band ; 
 scalar_t__ FUNC2 (int) ; 
 struct pfifo_fast_priv* FUNC3 (struct Qdisc*) ; 
 scalar_t__ FUNC4 (struct sk_buff_head*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct Qdisc* qdisc)
{
	struct pfifo_fast_priv *priv = FUNC3(qdisc);
	int band = bitmap2band[priv->bitmap];

	if (FUNC2(band >= 0)) {
		struct sk_buff_head *list = FUNC1(priv, band);
		struct sk_buff *skb = FUNC0(qdisc, list);

		qdisc->q.qlen--;
		if (FUNC4(list))
			priv->bitmap &= ~(1 << band);

		return skb;
	}

	return NULL;
}