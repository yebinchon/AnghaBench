
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {int id; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NLMSG_DATA (int ) ;
 void* genlmsg_data (int ) ;
 scalar_t__ genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ ieee802154_coord_mcgrp ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static int ieee802154_nl_finish(struct sk_buff *msg)
{

 void *hdr = genlmsg_data(NLMSG_DATA(msg->data));

 if (genlmsg_end(msg, hdr) < 0)
  goto out;

 return genlmsg_multicast(msg, 0, ieee802154_coord_mcgrp.id,
   GFP_ATOMIC);
out:
 nlmsg_free(msg);
 return -ENOBUFS;
}
