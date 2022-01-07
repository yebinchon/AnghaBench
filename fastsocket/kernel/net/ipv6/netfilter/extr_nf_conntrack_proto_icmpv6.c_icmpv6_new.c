
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int valid_new ;
typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {TYPE_4__* tuplehash; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ icmp; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ dst; } ;
struct TYPE_9__ {TYPE_5__ tuple; } ;




 int IPPROTO_ICMPV6 ;
 scalar_t__ LOG_INVALID (int ,int ) ;
 int PF_INET6 ;
 int nf_ct_dump_tuple_ipv6 (TYPE_5__*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_log_packet (int ,int ,struct sk_buff const*,int *,int *,int *,char*,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static bool icmpv6_new(struct nf_conn *ct, const struct sk_buff *skb,
         unsigned int dataoff)
{
 static const u_int8_t valid_new[] = {
  [129 - 128] = 1,
  [128 - 128] = 1
 };
 int type = ct->tuplehash[0].tuple.dst.u.icmp.type - 128;

 if (type < 0 || type >= sizeof(valid_new) || !valid_new[type]) {

  pr_debug("icmpv6: can't create new conn with type %u\n",
    type + 128);
  nf_ct_dump_tuple_ipv6(&ct->tuplehash[0].tuple);
  if (LOG_INVALID(nf_ct_net(ct), IPPROTO_ICMPV6))
   nf_log_packet(PF_INET6, 0, skb, ((void*)0), ((void*)0), ((void*)0),
          "nf_ct_icmpv6: invalid new with type %d ",
          type + 128);
  return 0;
 }
 return 1;
}
