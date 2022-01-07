
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int mtu; } ;
struct mld2_report {int mld2r_ngrec; } ;
struct mld2_grec {int grec_type; int grec_mca; scalar_t__ grec_nsrcs; scalar_t__ grec_auxwords; } ;
struct ifmcaddr6 {int mca_addr; TYPE_1__* idev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int htons (scalar_t__) ;
 struct sk_buff* mld_newpack (struct net_device*,int ) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *add_grhead(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 int type, struct mld2_grec **ppgr)
{
 struct net_device *dev = pmc->idev->dev;
 struct mld2_report *pmr;
 struct mld2_grec *pgr;

 if (!skb)
  skb = mld_newpack(dev, dev->mtu);
 if (!skb)
  return ((void*)0);
 pgr = (struct mld2_grec *)skb_put(skb, sizeof(struct mld2_grec));
 pgr->grec_type = type;
 pgr->grec_auxwords = 0;
 pgr->grec_nsrcs = 0;
 pgr->grec_mca = pmc->mca_addr;
 pmr = (struct mld2_report *)skb_transport_header(skb);
 pmr->mld2r_ngrec = htons(ntohs(pmr->mld2r_ngrec)+1);
 *ppgr = pgr;
 return skb;
}
