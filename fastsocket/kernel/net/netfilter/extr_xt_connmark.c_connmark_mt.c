
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {struct xt_connmark_mtinfo1* matchinfo; } ;
struct xt_connmark_mtinfo1 {int mask; int mark; int invert; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int mark; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;

__attribute__((used)) static bool
connmark_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_connmark_mtinfo1 *info = par->matchinfo;
 enum ip_conntrack_info ctinfo;
 const struct nf_conn *ct;

 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0))
  return 0;

 return ((ct->mark & info->mask) == info->mark) ^ info->invert;
}
