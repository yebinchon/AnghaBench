
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {struct xt_helper_info* matchinfo; } ;
struct xt_helper_info {int invert; char* name; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int name; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int master; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 struct nf_conn_help* nfct_help (int ) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;
 int strlen (int ) ;
 int strncmp (int ,char*,int ) ;

__attribute__((used)) static bool
helper_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_helper_info *info = par->matchinfo;
 const struct nf_conn *ct;
 const struct nf_conn_help *master_help;
 const struct nf_conntrack_helper *helper;
 enum ip_conntrack_info ctinfo;
 bool ret = info->invert;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct || !ct->master)
  return ret;

 master_help = nfct_help(ct->master);
 if (!master_help)
  return ret;


 helper = rcu_dereference(master_help->helper);
 if (!helper)
  return ret;

 if (info->name[0] == '\0')
  ret = !ret;
 else
  ret ^= !strncmp(helper->name, info->name,
    strlen(helper->name));
 return ret;
}
