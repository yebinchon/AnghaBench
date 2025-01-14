
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int cap; } ;
struct common_audit_data {TYPE_1__ u; } ;
struct TYPE_4__ {int sid; } ;


 int CAP ;
 int CAP_TO_MASK (int) ;
 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int SECCLASS_CAPABILITY ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int cap_netlink_recv (struct sk_buff*,int) ;

__attribute__((used)) static int selinux_netlink_recv(struct sk_buff *skb, int capability)
{
 int err;
 struct common_audit_data ad;

 err = cap_netlink_recv(skb, capability);
 if (err)
  return err;

 COMMON_AUDIT_DATA_INIT(&ad, CAP);
 ad.u.cap = capability;

 return avc_has_perm(NETLINK_CB(skb).sid, NETLINK_CB(skb).sid,
       SECCLASS_CAPABILITY, CAP_TO_MASK(capability), &ad);
}
