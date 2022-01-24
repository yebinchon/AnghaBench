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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__ ev_q; } ;

/* Variables and functions */
 TYPE_2__ llc_main_station ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(&llc_main_station.ev_q.list)) != NULL)
		FUNC0(skb);
}