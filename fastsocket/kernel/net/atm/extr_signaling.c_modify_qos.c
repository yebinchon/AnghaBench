
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct atmsvc_msg {int type; int reply; int qos; } ;
struct atm_vcc {TYPE_2__* dev; int flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* change_qos ) (struct atm_vcc*,int *,int ) ;} ;


 int ATM_VF_READY ;
 int ATM_VF_RELEASED ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (int,int ) ;
 int as_error ;
 int as_okay ;
 int schedule () ;
 int sigd_put_skb (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int stub1 (struct atm_vcc*,int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void modify_qos(struct atm_vcc *vcc,struct atmsvc_msg *msg)
{
 struct sk_buff *skb;

 if (test_bit(ATM_VF_RELEASED,&vcc->flags) ||
     !test_bit(ATM_VF_READY,&vcc->flags))
  return;
 msg->type = as_error;
 if (!vcc->dev->ops->change_qos) msg->reply = -EOPNOTSUPP;
 else {

  msg->reply = vcc->dev->ops->change_qos(vcc,&msg->qos,
      msg->reply);
  if (!msg->reply) msg->type = as_okay;
 }




 while (!(skb = alloc_skb(sizeof(struct atmsvc_msg),GFP_KERNEL)))
  schedule();
 *(struct atmsvc_msg *) skb_put(skb,sizeof(struct atmsvc_msg)) = *msg;
 sigd_put_skb(skb);
}
