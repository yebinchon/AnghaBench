
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wimax_dev {int dummy; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL ;
 int d_dump (int,struct device*,void*,size_t) ;
 int d_printf (int,struct device*,char*,...) ;
 int genlmsg_multicast (struct sk_buff*,int ,int ,int ) ;
 int might_sleep () ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 TYPE_1__ wimax_gnl_mcg ;

int wimax_msg_send(struct wimax_dev *wimax_dev, struct sk_buff *skb)
{
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 void *msg = skb->data;
 size_t size = skb->len;
 might_sleep();

 d_printf(1, dev, "CTX: wimax msg, %zu bytes\n", size);
 d_dump(2, dev, msg, size);
 genlmsg_multicast(skb, 0, wimax_gnl_mcg.id, GFP_KERNEL);
 d_printf(1, dev, "CTX: genl multicast done\n");
 return 0;
}
