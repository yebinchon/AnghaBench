
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib_rule_hdr {int tos; scalar_t__ src_len; scalar_t__ dst_len; } ;
struct fib_rule {int dummy; } ;
struct TYPE_4__ {int addr; scalar_t__ plen; } ;
struct TYPE_3__ {int addr; scalar_t__ plen; } ;
struct fib6_rule {TYPE_2__ src; TYPE_1__ dst; int tclass; } ;


 int ENOBUFS ;
 int FRA_DST ;
 int FRA_SRC ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int fib6_rule_fill(struct fib_rule *rule, struct sk_buff *skb,
     struct fib_rule_hdr *frh)
{
 struct fib6_rule *rule6 = (struct fib6_rule *) rule;

 frh->dst_len = rule6->dst.plen;
 frh->src_len = rule6->src.plen;
 frh->tos = rule6->tclass;

 if (rule6->dst.plen)
  NLA_PUT(skb, FRA_DST, sizeof(struct in6_addr),
   &rule6->dst.addr);

 if (rule6->src.plen)
  NLA_PUT(skb, FRA_SRC, sizeof(struct in6_addr),
   &rule6->src.addr);

 return 0;

nla_put_failure:
 return -ENOBUFS;
}
