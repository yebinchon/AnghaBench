
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrmu_spdinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct xfrmu_spdhinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct xfrmk_spdinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef int sph ;
typedef int spc ;


 int EMSGSIZE ;
 int NLA_PUT (struct sk_buff*,int ,int,struct xfrmu_spdinfo*) ;
 int XFRMA_SPD_HINFO ;
 int XFRMA_SPD_INFO ;
 int XFRM_MSG_NEWSPDINFO ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int * nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_spd_getinfo (struct xfrmk_spdinfo*) ;

__attribute__((used)) static int build_spdinfo(struct sk_buff *skb, u32 pid, u32 seq, u32 flags)
{
 struct xfrmk_spdinfo si;
 struct xfrmu_spdinfo spc;
 struct xfrmu_spdhinfo sph;
 struct nlmsghdr *nlh;
 u32 *f;

 nlh = nlmsg_put(skb, pid, seq, XFRM_MSG_NEWSPDINFO, sizeof(u32), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 f = nlmsg_data(nlh);
 *f = flags;
 xfrm_spd_getinfo(&si);
 spc.incnt = si.incnt;
 spc.outcnt = si.outcnt;
 spc.fwdcnt = si.fwdcnt;
 spc.inscnt = si.inscnt;
 spc.outscnt = si.outscnt;
 spc.fwdscnt = si.fwdscnt;
 sph.spdhcnt = si.spdhcnt;
 sph.spdhmcnt = si.spdhmcnt;

 NLA_PUT(skb, XFRMA_SPD_INFO, sizeof(spc), &spc);
 NLA_PUT(skb, XFRMA_SPD_HINFO, sizeof(sph), &sph);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
