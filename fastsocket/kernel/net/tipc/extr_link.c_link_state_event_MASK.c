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
typedef  int u32 ;
struct link {int continuity_interval; int started; int state; int /*<<< orphan*/  fsm_msg_cnt; TYPE_1__* owner; int /*<<< orphan*/  name; int /*<<< orphan*/  abort_limit; int /*<<< orphan*/  next_in_no; int /*<<< orphan*/  checkpoint; int /*<<< orphan*/  max_pkt_target; int /*<<< orphan*/  max_pkt; } ;
struct TYPE_2__ {struct link** active_links; } ;

/* Variables and functions */
#define  ACTIVATE_MSG 136 
#define  RESET_MSG 135 
#define  RESET_RESET 134 
#define  RESET_UNKNOWN 133 
#define  STARTING_EVT 132 
 int const STATE_MSG ; 
#define  TIMEOUT_EVT 131 
#define  TRAFFIC_MSG_EVT 130 
#define  WORKING_UNKNOWN 129 
#define  WORKING_WORKING 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct link*) ; 
 scalar_t__ FUNC4 (struct link*) ; 
 int /*<<< orphan*/  FUNC5 (struct link*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct link*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct link*) ; 
 int /*<<< orphan*/  FUNC9 (struct link*,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct link *l_ptr, unsigned event)
{
	struct link *other;
	u32 cont_intv = l_ptr->continuity_interval;

	if (!l_ptr->started && (event != STARTING_EVT))
		return;		/* Not yet. */

	if (FUNC4(l_ptr)) {
		if (event == TIMEOUT_EVT) {
			FUNC5(l_ptr, cont_intv);
		}
		return;	  /* Changeover going on */
	}
	FUNC0("STATE_EV: <%s> ", l_ptr->name);

	switch (l_ptr->state) {
	case WORKING_WORKING:
		FUNC0("WW/");
		switch (event) {
		case TRAFFIC_MSG_EVT:
			FUNC0("TRF-");
			/* fall through */
		case ACTIVATE_MSG:
			FUNC0("ACT\n");
			break;
		case TIMEOUT_EVT:
			FUNC0("TIM ");
			if (l_ptr->next_in_no != l_ptr->checkpoint) {
				l_ptr->checkpoint = l_ptr->next_in_no;
				if (FUNC7(l_ptr->owner)) {
					FUNC9(l_ptr, STATE_MSG,
								 0, 0, 0, 0, 0);
					l_ptr->fsm_msg_cnt++;
				} else if (l_ptr->max_pkt < l_ptr->max_pkt_target) {
					FUNC9(l_ptr, STATE_MSG,
								 1, 0, 0, 0, 0);
					l_ptr->fsm_msg_cnt++;
				}
				FUNC5(l_ptr, cont_intv);
				break;
			}
			FUNC0(" -> WU\n");
			l_ptr->state = WORKING_UNKNOWN;
			l_ptr->fsm_msg_cnt = 0;
			FUNC9(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv / 4);
			break;
		case RESET_MSG:
			FUNC0("RES -> RR\n");
			FUNC2("Resetting link <%s>, requested by peer\n",
			     l_ptr->name);
			FUNC8(l_ptr);
			l_ptr->state = RESET_RESET;
			l_ptr->fsm_msg_cnt = 0;
			FUNC9(l_ptr, ACTIVATE_MSG, 0, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		default:
			FUNC1("Unknown link event %u in WW state\n", event);
		}
		break;
	case WORKING_UNKNOWN:
		FUNC0("WU/");
		switch (event) {
		case TRAFFIC_MSG_EVT:
			FUNC0("TRF-");
		case ACTIVATE_MSG:
			FUNC0("ACT -> WW\n");
			l_ptr->state = WORKING_WORKING;
			l_ptr->fsm_msg_cnt = 0;
			FUNC5(l_ptr, cont_intv);
			break;
		case RESET_MSG:
			FUNC0("RES -> RR\n");
			FUNC2("Resetting link <%s>, requested by peer "
			     "while probing\n", l_ptr->name);
			FUNC8(l_ptr);
			l_ptr->state = RESET_RESET;
			l_ptr->fsm_msg_cnt = 0;
			FUNC9(l_ptr, ACTIVATE_MSG, 0, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		case TIMEOUT_EVT:
			FUNC0("TIM ");
			if (l_ptr->next_in_no != l_ptr->checkpoint) {
				FUNC0("-> WW \n");
				l_ptr->state = WORKING_WORKING;
				l_ptr->fsm_msg_cnt = 0;
				l_ptr->checkpoint = l_ptr->next_in_no;
				if (FUNC7(l_ptr->owner)) {
					FUNC9(l_ptr, STATE_MSG,
								 0, 0, 0, 0, 0);
					l_ptr->fsm_msg_cnt++;
				}
				FUNC5(l_ptr, cont_intv);
			} else if (l_ptr->fsm_msg_cnt < l_ptr->abort_limit) {
				FUNC0("Probing %u/%u,timer = %u ms)\n",
					 l_ptr->fsm_msg_cnt, l_ptr->abort_limit,
					 cont_intv / 4);
				FUNC9(l_ptr, STATE_MSG,
							 1, 0, 0, 0, 0);
				l_ptr->fsm_msg_cnt++;
				FUNC5(l_ptr, cont_intv / 4);
			} else {	/* Link has failed */
				FUNC0("-> RU (%u probes unanswered)\n",
					 l_ptr->fsm_msg_cnt);
				FUNC10("Resetting link <%s>, peer not responding\n",
				     l_ptr->name);
				FUNC8(l_ptr);
				l_ptr->state = RESET_UNKNOWN;
				l_ptr->fsm_msg_cnt = 0;
				FUNC9(l_ptr, RESET_MSG,
							 0, 0, 0, 0, 0);
				l_ptr->fsm_msg_cnt++;
				FUNC5(l_ptr, cont_intv);
			}
			break;
		default:
			FUNC1("Unknown link event %u in WU state\n", event);
		}
		break;
	case RESET_UNKNOWN:
		FUNC0("RU/");
		switch (event) {
		case TRAFFIC_MSG_EVT:
			FUNC0("TRF-\n");
			break;
		case ACTIVATE_MSG:
			other = l_ptr->owner->active_links[0];
			if (other && FUNC6(other)) {
				FUNC0("ACT\n");
				break;
			}
			FUNC0("ACT -> WW\n");
			l_ptr->state = WORKING_WORKING;
			l_ptr->fsm_msg_cnt = 0;
			FUNC3(l_ptr);
			FUNC9(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		case RESET_MSG:
			FUNC0("RES \n");
			FUNC0(" -> RR\n");
			l_ptr->state = RESET_RESET;
			l_ptr->fsm_msg_cnt = 0;
			FUNC9(l_ptr, ACTIVATE_MSG, 1, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		case STARTING_EVT:
			FUNC0("START-");
			l_ptr->started = 1;
			/* fall through */
		case TIMEOUT_EVT:
			FUNC0("TIM \n");
			FUNC9(l_ptr, RESET_MSG, 0, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		default:
			FUNC1("Unknown link event %u in RU state\n", event);
		}
		break;
	case RESET_RESET:
		FUNC0("RR/ ");
		switch (event) {
		case TRAFFIC_MSG_EVT:
			FUNC0("TRF-");
			/* fall through */
		case ACTIVATE_MSG:
			other = l_ptr->owner->active_links[0];
			if (other && FUNC6(other)) {
				FUNC0("ACT\n");
				break;
			}
			FUNC0("ACT -> WW\n");
			l_ptr->state = WORKING_WORKING;
			l_ptr->fsm_msg_cnt = 0;
			FUNC3(l_ptr);
			FUNC9(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			break;
		case RESET_MSG:
			FUNC0("RES\n");
			break;
		case TIMEOUT_EVT:
			FUNC0("TIM\n");
			FUNC9(l_ptr, ACTIVATE_MSG, 0, 0, 0, 0, 0);
			l_ptr->fsm_msg_cnt++;
			FUNC5(l_ptr, cont_intv);
			FUNC0("fsm_msg_cnt %u\n", l_ptr->fsm_msg_cnt);
			break;
		default:
			FUNC1("Unknown link event %u in RR state\n", event);
		}
		break;
	default:
		FUNC1("Unknown link state %u/%u\n", l_ptr->state, event);
	}
}