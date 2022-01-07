
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






 int nf_ct_dump_tuple_ip (TYPE_5__*) ;
 int pr_debug (char*,size_t) ;

__attribute__((used)) static bool icmp_new(struct nf_conn *ct, const struct sk_buff *skb,
       unsigned int dataoff)
{
 static const u_int8_t valid_new[] = {
  [130] = 1,
  [128] = 1,
  [129] = 1,
  [131] = 1
 };

 if (ct->tuplehash[0].tuple.dst.u.icmp.type >= sizeof(valid_new)
     || !valid_new[ct->tuplehash[0].tuple.dst.u.icmp.type]) {

  pr_debug("icmp: can't create new conn with type %u\n",
    ct->tuplehash[0].tuple.dst.u.icmp.type);
  nf_ct_dump_tuple_ip(&ct->tuplehash[0].tuple);
  return 0;
 }
 return 1;
}
