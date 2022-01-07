
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib_rule_hdr {int tos; scalar_t__ dst_len; scalar_t__ src_len; } ;
struct fib_rule {scalar_t__ action; int table; } ;
struct TYPE_4__ {scalar_t__ plen; int addr; } ;
struct TYPE_3__ {scalar_t__ plen; int addr; } ;
struct fib6_rule {int tclass; TYPE_2__ dst; TYPE_1__ src; } ;


 int EINVAL ;
 int ENOBUFS ;
 size_t FRA_DST ;
 size_t FRA_SRC ;
 scalar_t__ FR_ACT_TO_TBL ;
 int RT6_TABLE_UNSPEC ;
 int * fib6_new_table (struct net*,int ) ;
 int nla_memcpy (int *,struct nlattr*,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int fib6_rule_configure(struct fib_rule *rule, struct sk_buff *skb,
          struct fib_rule_hdr *frh,
          struct nlattr **tb)
{
 int err = -EINVAL;
 struct net *net = sock_net(skb->sk);
 struct fib6_rule *rule6 = (struct fib6_rule *) rule;

 if (rule->action == FR_ACT_TO_TBL) {
  if (rule->table == RT6_TABLE_UNSPEC)
   goto errout;

  if (fib6_new_table(net, rule->table) == ((void*)0)) {
   err = -ENOBUFS;
   goto errout;
  }
 }

 if (frh->src_len)
  nla_memcpy(&rule6->src.addr, tb[FRA_SRC],
      sizeof(struct in6_addr));

 if (frh->dst_len)
  nla_memcpy(&rule6->dst.addr, tb[FRA_DST],
      sizeof(struct in6_addr));

 rule6->src.plen = frh->src_len;
 rule6->dst.plen = frh->dst_len;
 rule6->tclass = frh->tos;

 err = 0;
errout:
 return err;
}
