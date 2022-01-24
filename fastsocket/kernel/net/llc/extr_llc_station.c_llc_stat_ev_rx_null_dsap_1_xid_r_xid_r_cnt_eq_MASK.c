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
struct llc_station_state_ev {scalar_t__ type; } ;
struct llc_pdu_un {int /*<<< orphan*/  dsap; } ;
struct TYPE_2__ {int xid_r_count; } ;

/* Variables and functions */
 scalar_t__ LLC_1_PDU_CMD_XID ; 
 scalar_t__ FUNC0 (struct llc_pdu_un*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_un*) ; 
 scalar_t__ LLC_STATION_EV_TYPE_PDU ; 
 scalar_t__ FUNC2 (struct llc_pdu_un*) ; 
 TYPE_1__ llc_main_station ; 
 struct llc_pdu_un* FUNC3 (struct sk_buff*) ; 
 struct llc_station_state_ev* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct llc_station_state_ev *ev = FUNC4(skb);
	struct llc_pdu_un *pdu = FUNC3(skb);

	return ev->type == LLC_STATION_EV_TYPE_PDU &&
	       FUNC0(pdu) &&			/* response PDU */
	       FUNC1(pdu) &&		/* U type PDU */
	       FUNC2(pdu) == LLC_1_PDU_CMD_XID &&
	       !pdu->dsap &&				/* NULL DSAP value */
	       llc_main_station.xid_r_count == 1 ? 0 : 1;
}