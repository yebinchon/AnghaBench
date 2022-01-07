
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fib_rule_hdr {int tos; scalar_t__ src_len; scalar_t__ dst_len; } ;
struct fib_rule {int dummy; } ;
struct fib4_rule {scalar_t__ tclassid; int src; scalar_t__ src_len; int dst; scalar_t__ dst_len; int tos; } ;


 int ENOBUFS ;
 int FRA_DST ;
 int FRA_FLOW ;
 int FRA_SRC ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int fib4_rule_fill(struct fib_rule *rule, struct sk_buff *skb,
     struct fib_rule_hdr *frh)
{
 struct fib4_rule *rule4 = (struct fib4_rule *) rule;

 frh->dst_len = rule4->dst_len;
 frh->src_len = rule4->src_len;
 frh->tos = rule4->tos;

 if (rule4->dst_len)
  NLA_PUT_BE32(skb, FRA_DST, rule4->dst);

 if (rule4->src_len)
  NLA_PUT_BE32(skb, FRA_SRC, rule4->src);





 return 0;

nla_put_failure:
 return -ENOBUFS;
}
