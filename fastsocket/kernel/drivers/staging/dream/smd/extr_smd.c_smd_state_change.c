
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smd_channel {unsigned int last_state; int priv; int (* notify ) (int ,int ) ;TYPE_2__* send; TYPE_1__* recv; int n; } ;
struct TYPE_4__ {int const state; } ;
struct TYPE_3__ {int tail; } ;


 int SMD_EVENT_CLOSE ;
 int SMD_EVENT_OPEN ;




 int chstate (unsigned int) ;
 int hc_set_state (TYPE_2__*,int const) ;
 int pr_info (char*,int ,int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void smd_state_change(struct smd_channel *ch,
        unsigned last, unsigned next)
{
 ch->last_state = next;

 pr_info("SMD: ch %d %s -> %s\n", ch->n,
  chstate(last), chstate(next));

 switch (next) {
 case 129:
  ch->recv->tail = 0;
 case 130:
  if (ch->send->state != 130)
   hc_set_state(ch->send, 130);
  ch->notify(ch->priv, SMD_EVENT_OPEN);
  break;
 case 131:
 case 128:

 default:
  ch->notify(ch->priv, SMD_EVENT_CLOSE);
 }
}
