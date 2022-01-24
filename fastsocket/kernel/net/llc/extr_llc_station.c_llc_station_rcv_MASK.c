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
struct llc_station_state_ev {scalar_t__ reason; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLC_STATION_EV_TYPE_PDU ; 
 struct llc_station_state_ev* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb)
{
	struct llc_station_state_ev *ev = FUNC0(skb);

	ev->type   = LLC_STATION_EV_TYPE_PDU;
	ev->reason = 0;
	FUNC1(skb);
}