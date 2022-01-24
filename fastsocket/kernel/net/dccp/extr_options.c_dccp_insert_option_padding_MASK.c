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
struct TYPE_2__ {int dccpd_opt_len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	int padding = FUNC0(skb)->dccpd_opt_len % 4;

	if (padding != 0) {
		padding = 4 - padding;
		FUNC1(FUNC2(skb, padding), 0, padding);
		FUNC0(skb)->dccpd_opt_len += padding;
	}
}