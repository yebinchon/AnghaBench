
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xt_match_param {struct xt_iprange_mtinfo* matchinfo; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_6__ {int ip; } ;
struct TYPE_5__ {int ip; } ;
struct xt_iprange_mtinfo {int flags; TYPE_4__ dst_max; TYPE_3__ dst_min; TYPE_2__ src_max; TYPE_1__ src_min; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;


 int IPRANGE_DST ;
 int IPRANGE_DST_INV ;
 int IPRANGE_SRC ;
 int IPRANGE_SRC_INV ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 scalar_t__ ntohl (int ) ;
 int pr_debug (char*,int *,char*,int *,int *) ;

__attribute__((used)) static bool
iprange_mt4(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_iprange_mtinfo *info = par->matchinfo;
 const struct iphdr *iph = ip_hdr(skb);
 bool m;

 if (info->flags & IPRANGE_SRC) {
  m = ntohl(iph->saddr) < ntohl(info->src_min.ip);
  m |= ntohl(iph->saddr) > ntohl(info->src_max.ip);
  m ^= !!(info->flags & IPRANGE_SRC_INV);
  if (m) {
   pr_debug("src IP %pI4 NOT in range %s%pI4-%pI4\n",
            &iph->saddr,
            (info->flags & IPRANGE_SRC_INV) ? "(INV) " : "",
            &info->src_max.ip,
            &info->src_max.ip);
   return 0;
  }
 }
 if (info->flags & IPRANGE_DST) {
  m = ntohl(iph->daddr) < ntohl(info->dst_min.ip);
  m |= ntohl(iph->daddr) > ntohl(info->dst_max.ip);
  m ^= !!(info->flags & IPRANGE_DST_INV);
  if (m) {
   pr_debug("dst IP %pI4 NOT in range %s%pI4-%pI4\n",
            &iph->daddr,
            (info->flags & IPRANGE_DST_INV) ? "(INV) " : "",
            &info->dst_min.ip,
            &info->dst_max.ip);
   return 0;
  }
 }
 return 1;
}
