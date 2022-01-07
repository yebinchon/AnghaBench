
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conn_counter {int bytes; int packets; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef enum ctattr_type { ____Placeholder_ctattr_type } ctattr_type ;


 int CTA_COUNTERS_BYTES ;
 int CTA_COUNTERS_ORIG ;
 int CTA_COUNTERS_PACKETS ;
 int CTA_COUNTERS_REPLY ;
 int NLA_F_NESTED ;
 int NLA_PUT_BE64 (struct sk_buff*,int ,int ) ;
 int cpu_to_be64 (int ) ;
 struct nf_conn_counter* nf_conn_acct_find (struct nf_conn const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;

__attribute__((used)) static int
ctnetlink_dump_counters(struct sk_buff *skb, const struct nf_conn *ct,
   enum ip_conntrack_dir dir)
{
 enum ctattr_type type = dir ? CTA_COUNTERS_REPLY: CTA_COUNTERS_ORIG;
 struct nlattr *nest_count;
 const struct nf_conn_counter *acct;

 acct = nf_conn_acct_find(ct);
 if (!acct)
  return 0;

 nest_count = nla_nest_start(skb, type | NLA_F_NESTED);
 if (!nest_count)
  goto nla_put_failure;

 NLA_PUT_BE64(skb, CTA_COUNTERS_PACKETS,
       cpu_to_be64(acct[dir].packets));
 NLA_PUT_BE64(skb, CTA_COUNTERS_BYTES,
       cpu_to_be64(acct[dir].bytes));

 nla_nest_end(skb, nest_count);

 return 0;

nla_put_failure:
 return -1;
}
