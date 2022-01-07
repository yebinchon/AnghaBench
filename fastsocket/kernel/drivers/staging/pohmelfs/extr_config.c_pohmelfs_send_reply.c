
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pohmelfs_ctl {scalar_t__ ack; } ;
struct TYPE_3__ {int len; scalar_t__ ack; } ;
struct pohmelfs_cn_ack {int error; int msg_num; TYPE_1__ msg; TYPE_1__ ctl; } ;
struct cn_msg {scalar_t__ ack; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int POHMELFS_CTLINFO_ACK ;
 int cn_netlink_send (TYPE_1__*,int ,int ) ;
 int kfree (struct pohmelfs_cn_ack*) ;
 struct pohmelfs_cn_ack* kmalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct pohmelfs_ctl*,int) ;
 int memset (struct pohmelfs_cn_ack*,int ,int) ;

__attribute__((used)) static int pohmelfs_send_reply(int err, int msg_num, int action, struct cn_msg *msg, struct pohmelfs_ctl *ctl)
{
 struct pohmelfs_cn_ack *ack;

 ack = kmalloc(sizeof(struct pohmelfs_cn_ack), GFP_KERNEL);
 if (!ack)
  return -ENOMEM;

 memset(ack, 0, sizeof(struct pohmelfs_cn_ack));
 memcpy(&ack->msg, msg, sizeof(struct cn_msg));

 if (action == POHMELFS_CTLINFO_ACK)
  memcpy(&ack->ctl, ctl, sizeof(struct pohmelfs_ctl));

 ack->msg.len = sizeof(struct pohmelfs_cn_ack) - sizeof(struct cn_msg);
 ack->msg.ack = msg->ack + 1;
 ack->error = err;
 ack->msg_num = msg_num;

 cn_netlink_send(&ack->msg, 0, GFP_KERNEL);
 kfree(ack);
 return 0;
}
