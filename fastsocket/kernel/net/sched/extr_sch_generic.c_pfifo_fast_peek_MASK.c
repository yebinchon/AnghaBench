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
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {size_t bitmap; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct sk_buff_head* FUNC0 (struct pfifo_fast_priv*,int) ; 
 int* bitmap2band ; 
 struct pfifo_fast_priv* FUNC1 (struct Qdisc*) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct Qdisc* qdisc)
{
	struct pfifo_fast_priv *priv = FUNC1(qdisc);
	int band = bitmap2band[priv->bitmap];

	if (band >= 0) {
		struct sk_buff_head *list = FUNC0(priv, band);

		return FUNC2(list);
	}

	return NULL;
}