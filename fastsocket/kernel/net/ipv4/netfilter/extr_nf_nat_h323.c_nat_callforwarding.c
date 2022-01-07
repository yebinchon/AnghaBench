
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_17__ {int port; } ;
struct TYPE_18__ {TYPE_11__ tcp; } ;
struct TYPE_16__ {int ip; } ;
struct TYPE_19__ {TYPE_12__ u; TYPE_10__ u3; } ;
struct TYPE_28__ {int port; } ;
struct TYPE_29__ {TYPE_7__ tcp; } ;
struct TYPE_27__ {int ip; } ;
struct TYPE_30__ {TYPE_8__ u; TYPE_6__ u3; } ;
struct TYPE_20__ {TYPE_13__ dst; TYPE_9__ src; } ;
struct TYPE_22__ {int port; } ;
struct TYPE_23__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {int dir; TYPE_14__ tuple; int expectfn; TYPE_2__ saved_proto; int saved_ip; } ;
struct nf_conn {TYPE_5__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be16 ;
typedef int TransportAddress ;
struct TYPE_21__ {int ip; } ;
struct TYPE_24__ {TYPE_15__ u3; } ;
struct TYPE_25__ {TYPE_3__ dst; } ;
struct TYPE_26__ {TYPE_4__ tuple; } ;


 int CTINFO2DIR (int) ;
 int htons (scalar_t__) ;
 int ip_nat_callforwarding_expect ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ nf_ct_expect_related (struct nf_conntrack_expect*) ;
 int nf_ct_unexpect_related (struct nf_conntrack_expect*) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,int *,scalar_t__,int *,scalar_t__) ;
 int printk (char*) ;
 int set_h225_addr (struct sk_buff*,unsigned char**,int,int *,TYPE_15__*,int ) ;

__attribute__((used)) static int nat_callforwarding(struct sk_buff *skb, struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         unsigned char **data, int dataoff,
         TransportAddress *taddr, __be16 port,
         struct nf_conntrack_expect *exp)
{
 int dir = CTINFO2DIR(ctinfo);
 u_int16_t nated_port;


 exp->saved_ip = exp->tuple.dst.u3.ip;
 exp->tuple.dst.u3.ip = ct->tuplehash[!dir].tuple.dst.u3.ip;
 exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
 exp->expectfn = ip_nat_callforwarding_expect;
 exp->dir = !dir;


 for (nated_port = ntohs(port); nated_port != 0; nated_port++) {
  exp->tuple.dst.u.tcp.port = htons(nated_port);
  if (nf_ct_expect_related(exp) == 0)
   break;
 }

 if (nated_port == 0) {
  if (net_ratelimit())
   printk("nf_nat_q931: out of TCP ports\n");
  return 0;
 }


 if (!set_h225_addr(skb, data, dataoff, taddr,
      &ct->tuplehash[!dir].tuple.dst.u3,
      htons(nated_port)) == 0) {
  nf_ct_unexpect_related(exp);
  return -1;
 }


 pr_debug("nf_nat_q931: expect Call Forwarding %pI4:%hu->%pI4:%hu\n",
   &exp->tuple.src.u3.ip,
   ntohs(exp->tuple.src.u.tcp.port),
   &exp->tuple.dst.u3.ip,
   ntohs(exp->tuple.dst.u.tcp.port));

 return 0;
}
