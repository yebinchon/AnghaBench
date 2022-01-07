
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct link {int continuity_interval; int started; int state; int fsm_msg_cnt; TYPE_1__* owner; int name; int abort_limit; int next_in_no; int checkpoint; int max_pkt_target; int max_pkt; } ;
struct TYPE_2__ {struct link** active_links; } ;







 int const STATE_MSG ;




 int dbg_link (char*,...) ;
 int err (char*,int,...) ;
 int info (char*,int ) ;
 int link_activate (struct link*) ;
 scalar_t__ link_blocked (struct link*) ;
 int link_set_timer (struct link*,int) ;
 int link_working_unknown (struct link*) ;
 int tipc_bclink_acks_missing (TYPE_1__*) ;
 int tipc_link_reset (struct link*) ;
 int tipc_link_send_proto_msg (struct link*,int const,int,int ,int ,int ,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static void link_state_event(struct link *l_ptr, unsigned event)
{
 struct link *other;
 u32 cont_intv = l_ptr->continuity_interval;

 if (!l_ptr->started && (event != 132))
  return;

 if (link_blocked(l_ptr)) {
  if (event == 131) {
   link_set_timer(l_ptr, cont_intv);
  }
  return;
 }
 dbg_link("STATE_EV: <%s> ", l_ptr->name);

 switch (l_ptr->state) {
 case 128:
  dbg_link("WW/");
  switch (event) {
  case 130:
   dbg_link("TRF-");

  case 136:
   dbg_link("ACT\n");
   break;
  case 131:
   dbg_link("TIM ");
   if (l_ptr->next_in_no != l_ptr->checkpoint) {
    l_ptr->checkpoint = l_ptr->next_in_no;
    if (tipc_bclink_acks_missing(l_ptr->owner)) {
     tipc_link_send_proto_msg(l_ptr, STATE_MSG,
         0, 0, 0, 0, 0);
     l_ptr->fsm_msg_cnt++;
    } else if (l_ptr->max_pkt < l_ptr->max_pkt_target) {
     tipc_link_send_proto_msg(l_ptr, STATE_MSG,
         1, 0, 0, 0, 0);
     l_ptr->fsm_msg_cnt++;
    }
    link_set_timer(l_ptr, cont_intv);
    break;
   }
   dbg_link(" -> WU\n");
   l_ptr->state = 129;
   l_ptr->fsm_msg_cnt = 0;
   tipc_link_send_proto_msg(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv / 4);
   break;
  case 135:
   dbg_link("RES -> RR\n");
   info("Resetting link <%s>, requested by peer\n",
        l_ptr->name);
   tipc_link_reset(l_ptr);
   l_ptr->state = 134;
   l_ptr->fsm_msg_cnt = 0;
   tipc_link_send_proto_msg(l_ptr, 136, 0, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  default:
   err("Unknown link event %u in WW state\n", event);
  }
  break;
 case 129:
  dbg_link("WU/");
  switch (event) {
  case 130:
   dbg_link("TRF-");
  case 136:
   dbg_link("ACT -> WW\n");
   l_ptr->state = 128;
   l_ptr->fsm_msg_cnt = 0;
   link_set_timer(l_ptr, cont_intv);
   break;
  case 135:
   dbg_link("RES -> RR\n");
   info("Resetting link <%s>, requested by peer "
        "while probing\n", l_ptr->name);
   tipc_link_reset(l_ptr);
   l_ptr->state = 134;
   l_ptr->fsm_msg_cnt = 0;
   tipc_link_send_proto_msg(l_ptr, 136, 0, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  case 131:
   dbg_link("TIM ");
   if (l_ptr->next_in_no != l_ptr->checkpoint) {
    dbg_link("-> WW \n");
    l_ptr->state = 128;
    l_ptr->fsm_msg_cnt = 0;
    l_ptr->checkpoint = l_ptr->next_in_no;
    if (tipc_bclink_acks_missing(l_ptr->owner)) {
     tipc_link_send_proto_msg(l_ptr, STATE_MSG,
         0, 0, 0, 0, 0);
     l_ptr->fsm_msg_cnt++;
    }
    link_set_timer(l_ptr, cont_intv);
   } else if (l_ptr->fsm_msg_cnt < l_ptr->abort_limit) {
    dbg_link("Probing %u/%u,timer = %u ms)\n",
      l_ptr->fsm_msg_cnt, l_ptr->abort_limit,
      cont_intv / 4);
    tipc_link_send_proto_msg(l_ptr, STATE_MSG,
        1, 0, 0, 0, 0);
    l_ptr->fsm_msg_cnt++;
    link_set_timer(l_ptr, cont_intv / 4);
   } else {
    dbg_link("-> RU (%u probes unanswered)\n",
      l_ptr->fsm_msg_cnt);
    warn("Resetting link <%s>, peer not responding\n",
         l_ptr->name);
    tipc_link_reset(l_ptr);
    l_ptr->state = 133;
    l_ptr->fsm_msg_cnt = 0;
    tipc_link_send_proto_msg(l_ptr, 135,
        0, 0, 0, 0, 0);
    l_ptr->fsm_msg_cnt++;
    link_set_timer(l_ptr, cont_intv);
   }
   break;
  default:
   err("Unknown link event %u in WU state\n", event);
  }
  break;
 case 133:
  dbg_link("RU/");
  switch (event) {
  case 130:
   dbg_link("TRF-\n");
   break;
  case 136:
   other = l_ptr->owner->active_links[0];
   if (other && link_working_unknown(other)) {
    dbg_link("ACT\n");
    break;
   }
   dbg_link("ACT -> WW\n");
   l_ptr->state = 128;
   l_ptr->fsm_msg_cnt = 0;
   link_activate(l_ptr);
   tipc_link_send_proto_msg(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  case 135:
   dbg_link("RES \n");
   dbg_link(" -> RR\n");
   l_ptr->state = 134;
   l_ptr->fsm_msg_cnt = 0;
   tipc_link_send_proto_msg(l_ptr, 136, 1, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  case 132:
   dbg_link("START-");
   l_ptr->started = 1;

  case 131:
   dbg_link("TIM \n");
   tipc_link_send_proto_msg(l_ptr, 135, 0, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  default:
   err("Unknown link event %u in RU state\n", event);
  }
  break;
 case 134:
  dbg_link("RR/ ");
  switch (event) {
  case 130:
   dbg_link("TRF-");

  case 136:
   other = l_ptr->owner->active_links[0];
   if (other && link_working_unknown(other)) {
    dbg_link("ACT\n");
    break;
   }
   dbg_link("ACT -> WW\n");
   l_ptr->state = 128;
   l_ptr->fsm_msg_cnt = 0;
   link_activate(l_ptr);
   tipc_link_send_proto_msg(l_ptr, STATE_MSG, 1, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   break;
  case 135:
   dbg_link("RES\n");
   break;
  case 131:
   dbg_link("TIM\n");
   tipc_link_send_proto_msg(l_ptr, 136, 0, 0, 0, 0, 0);
   l_ptr->fsm_msg_cnt++;
   link_set_timer(l_ptr, cont_intv);
   dbg_link("fsm_msg_cnt %u\n", l_ptr->fsm_msg_cnt);
   break;
  default:
   err("Unknown link event %u in RR state\n", event);
  }
  break;
 default:
  err("Unknown link state %u/%u\n", l_ptr->state, event);
 }
}
