
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrmu_sadhinfo {int sadhcnt; int sadhmcnt; } ;
struct xfrmk_sadinfo {int sadcnt; int sadhcnt; int sadhmcnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef int sh ;


 int EMSGSIZE ;
 int NLA_PUT (struct sk_buff*,int ,int,struct xfrmu_sadhinfo*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int XFRMA_SAD_CNT ;
 int XFRMA_SAD_HINFO ;
 int XFRM_MSG_NEWSADINFO ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int * nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_sad_getinfo (struct xfrmk_sadinfo*) ;

__attribute__((used)) static int build_sadinfo(struct sk_buff *skb, u32 pid, u32 seq, u32 flags)
{
 struct xfrmk_sadinfo si;
 struct xfrmu_sadhinfo sh;
 struct nlmsghdr *nlh;
 u32 *f;

 nlh = nlmsg_put(skb, pid, seq, XFRM_MSG_NEWSADINFO, sizeof(u32), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 f = nlmsg_data(nlh);
 *f = flags;
 xfrm_sad_getinfo(&si);

 sh.sadhmcnt = si.sadhmcnt;
 sh.sadhcnt = si.sadhcnt;

 NLA_PUT_U32(skb, XFRMA_SAD_CNT, si.sadcnt);
 NLA_PUT(skb, XFRMA_SAD_HINFO, sizeof(sh), &sh);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
