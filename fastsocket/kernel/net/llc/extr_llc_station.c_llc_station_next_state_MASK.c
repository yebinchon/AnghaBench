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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct llc_station_state_trans {scalar_t__ next_state; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ LLC_NBR_STATION_STATES ; 
 int FUNC0 (struct llc_station_state_trans*,struct sk_buff*) ; 
 struct llc_station_state_trans* FUNC1 (struct sk_buff*) ; 
 TYPE_1__ llc_main_station ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC3(struct sk_buff *skb)
{
	u16 rc = 1;
	struct llc_station_state_trans *trans;

	if (llc_main_station.state > LLC_NBR_STATION_STATES)
		goto out;
	trans = FUNC1(skb);
	if (trans) {
		/* got the state to which we next transition; perform the
		 * actions associated with this transition before actually
		 * transitioning to the next state
		 */
		rc = FUNC0(trans, skb);
		if (!rc)
			/* transition station to next state if all actions
			 * execute successfully; done; wait for next event
			 */
			llc_main_station.state = trans->next_state;
	} else
		/* event not recognized in current state; re-queue it for
		 * processing again at a later time; return failure
		 */
		rc = 0;
out:
	FUNC2(skb);
	return rc;
}