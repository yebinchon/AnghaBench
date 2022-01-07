
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int truesize; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int (* sk_data_ready ) (TYPE_1__*,int ) ;int sk_receive_queue; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_3__*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int atm_force_charge (int ,int ) ;
 TYPE_3__* current ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int sigd ;
 int sigd_sleep ;
 TYPE_1__* sk_atm (int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (TYPE_1__*,int ) ;
 int wait ;

__attribute__((used)) static void sigd_put_skb(struct sk_buff *skb)
{
 if (!sigd) {
  pr_debug("atmsvc: no signaling demon\n");
  kfree_skb(skb);
  return;
 }

 atm_force_charge(sigd,skb->truesize);
 skb_queue_tail(&sk_atm(sigd)->sk_receive_queue,skb);
 sk_atm(sigd)->sk_data_ready(sk_atm(sigd), skb->len);
}
