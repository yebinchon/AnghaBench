
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_exts {TYPE_1__* action; } ;
struct tcf_ext_map {scalar_t__ police; scalar_t__ action; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ TCA_OLD_COMPAT ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,scalar_t__) ;
 scalar_t__ tcf_action_dump (struct sk_buff*,TYPE_1__*,int ,int ) ;
 scalar_t__ tcf_action_dump_old (struct sk_buff*,TYPE_1__*,int ,int ) ;

int tcf_exts_dump(struct sk_buff *skb, struct tcf_exts *exts,
    const struct tcf_ext_map *map)
{
 return 0;
nla_put_failure: __attribute__ ((unused))
 return -1;
}
