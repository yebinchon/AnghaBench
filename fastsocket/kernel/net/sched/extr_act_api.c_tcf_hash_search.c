
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_hashinfo {int dummy; } ;
struct tcf_common {int dummy; } ;
struct tc_action {struct tcf_common* priv; TYPE_1__* ops; } ;
struct TYPE_2__ {struct tcf_hashinfo* hinfo; } ;


 struct tcf_common* tcf_hash_lookup (int ,struct tcf_hashinfo*) ;

int tcf_hash_search(struct tc_action *a, u32 index)
{
 struct tcf_hashinfo *hinfo = a->ops->hinfo;
 struct tcf_common *p = tcf_hash_lookup(index, hinfo);

 if (p) {
  a->priv = p;
  return 1;
 }
 return 0;
}
