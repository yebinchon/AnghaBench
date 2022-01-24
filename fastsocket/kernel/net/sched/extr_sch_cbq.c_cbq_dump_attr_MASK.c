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
struct sk_buff {int dummy; } ;
struct cbq_class {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*,struct cbq_class*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct cbq_class*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct cbq_class*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct cbq_class*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct cbq_class*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct cbq_class*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct cbq_class *cl)
{
	if (FUNC1(skb, cl) < 0 ||
	    FUNC4(skb, cl) < 0 ||
	    FUNC5(skb, cl) < 0 ||
	    FUNC2(skb, cl) < 0 ||
#ifdef CONFIG_NET_CLS_ACT
	    cbq_dump_police(skb, cl) < 0 ||
#endif
	    FUNC0(skb, cl) < 0)
		return -1;
	return 0;
}