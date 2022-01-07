
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct xt_target_param {struct xt_connmark_tginfo1* targinfo; } ;
struct xt_connmark_tginfo1 {int mode; int ctmask; int ctmark; int nfmask; } ;
struct sk_buff {int mark; } ;
struct nf_conn {int mark; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPCT_MARK ;



 unsigned int XT_CONTINUE ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;

__attribute__((used)) static unsigned int
connmark_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_connmark_tginfo1 *info = par->targinfo;
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;
 u_int32_t newmark;

 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0))
  return XT_CONTINUE;

 switch (info->mode) {
 case 128:
  newmark = (ct->mark & ~info->ctmask) ^ info->ctmark;
  if (ct->mark != newmark) {
   ct->mark = newmark;
   nf_conntrack_event_cache(IPCT_MARK, ct);
  }
  break;
 case 129:
  newmark = (ct->mark & ~info->ctmask) ^
            (skb->mark & info->nfmask);
  if (ct->mark != newmark) {
   ct->mark = newmark;
   nf_conntrack_event_cache(IPCT_MARK, ct);
  }
  break;
 case 130:
  newmark = (skb->mark & ~info->nfmask) ^
            (ct->mark & info->ctmask);
  skb->mark = newmark;
  break;
 }

 return XT_CONTINUE;
}
