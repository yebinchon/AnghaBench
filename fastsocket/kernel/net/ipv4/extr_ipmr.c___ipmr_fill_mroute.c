
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtnexthop {int rtnh_hops; int rtnh_len; int rtnh_ifindex; scalar_t__ rtnh_flags; } ;
struct rtmsg {int rtm_type; } ;
struct rtattr {int rta_len; int rta_type; } ;
struct mr_table {TYPE_4__* vif_table; } ;
struct TYPE_5__ {int minvif; int maxvif; int* ttls; } ;
struct TYPE_6__ {TYPE_1__ res; } ;
struct mfc_cache {int mfc_parent; TYPE_2__ mfc_un; } ;
struct TYPE_8__ {TYPE_3__* dev; } ;
struct TYPE_7__ {int ifindex; } ;


 int EMSGSIZE ;
 int ENOENT ;
 int MAXVIFS ;
 int RTA_ALIGN (int) ;
 int RTA_IIF ;
 int RTA_LENGTH (int ) ;
 int RTA_MULTIPATH ;
 int RTA_PUT (struct sk_buff*,int ,int,int *) ;
 int RTN_MULTICAST ;
 scalar_t__ VIF_EXISTS (struct mr_table*,int) ;
 int nlmsg_trim (struct sk_buff*,int *) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int * skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int __ipmr_fill_mroute(struct mr_table *mrt, struct sk_buff *skb,
         struct mfc_cache *c, struct rtmsg *rtm)
{
 int ct;
 struct rtnexthop *nhp;
 u8 *b = skb_tail_pointer(skb);
 struct rtattr *mp_head;


 if (c->mfc_parent >= MAXVIFS)
  return -ENOENT;

 if (VIF_EXISTS(mrt, c->mfc_parent))
  RTA_PUT(skb, RTA_IIF, 4, &mrt->vif_table[c->mfc_parent].dev->ifindex);

 mp_head = (struct rtattr *)skb_put(skb, RTA_LENGTH(0));

 for (ct = c->mfc_un.res.minvif; ct < c->mfc_un.res.maxvif; ct++) {
  if (VIF_EXISTS(mrt, ct) && c->mfc_un.res.ttls[ct] < 255) {
   if (skb_tailroom(skb) < RTA_ALIGN(RTA_ALIGN(sizeof(*nhp)) + 4))
    goto rtattr_failure;
   nhp = (struct rtnexthop *)skb_put(skb, RTA_ALIGN(sizeof(*nhp)));
   nhp->rtnh_flags = 0;
   nhp->rtnh_hops = c->mfc_un.res.ttls[ct];
   nhp->rtnh_ifindex = mrt->vif_table[ct].dev->ifindex;
   nhp->rtnh_len = sizeof(*nhp);
  }
 }
 mp_head->rta_type = RTA_MULTIPATH;
 mp_head->rta_len = skb_tail_pointer(skb) - (u8 *)mp_head;
 rtm->rtm_type = RTN_MULTICAST;
 return 1;

rtattr_failure:
 nlmsg_trim(skb, b);
 return -EMSGSIZE;
}
