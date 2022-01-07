
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_exts {scalar_t__ action; } ;
struct tcf_ext_map {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ tcf_action_copy_stats (struct sk_buff*,scalar_t__,int) ;

int tcf_exts_dump_stats(struct sk_buff *skb, struct tcf_exts *exts,
   const struct tcf_ext_map *map)
{





 return 0;
nla_put_failure: __attribute__ ((unused))
 return -1;
}
