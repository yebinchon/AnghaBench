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
struct llc_station_state_ev {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LLC_STATION_EV_TYPE_ACK_TMR ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_station_state_ev* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(unsigned long timeout_data)
{
	struct sk_buff *skb = FUNC0(0, GFP_ATOMIC);

	if (skb) {
		struct llc_station_state_ev *ev = FUNC1(skb);

		ev->type = LLC_STATION_EV_TYPE_ACK_TMR;
		FUNC2(skb);
	}
}