
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_upcall_info {scalar_t__ pid; struct nlattr const* userdata; int * key; int cmd; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {TYPE_1__* flow; } ;
struct TYPE_3__ {int key; } ;


 TYPE_2__* OVS_CB (struct sk_buff*) ;
 int OVS_PACKET_CMD_ACTION ;


 struct nlattr* nla_data (struct nlattr const*) ;
 scalar_t__ nla_get_u32 (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;
 int nla_type (struct nlattr const*) ;
 int ovs_dp_upcall (struct datapath*,struct sk_buff*,struct dp_upcall_info*) ;

__attribute__((used)) static int output_userspace(struct datapath *dp, struct sk_buff *skb,
       const struct nlattr *attr)
{
 struct dp_upcall_info upcall;
 const struct nlattr *a;
 int rem;

 upcall.cmd = OVS_PACKET_CMD_ACTION;
 upcall.key = &OVS_CB(skb)->flow->key;
 upcall.userdata = ((void*)0);
 upcall.pid = 0;

 for (a = nla_data(attr), rem = nla_len(attr); rem > 0;
   a = nla_next(a, &rem)) {
  switch (nla_type(a)) {
  case 128:
   upcall.userdata = a;
   break;

  case 129:
   upcall.pid = nla_get_u32(a);
   break;
  }
 }

 return ovs_dp_upcall(dp, skb, &upcall);
}
