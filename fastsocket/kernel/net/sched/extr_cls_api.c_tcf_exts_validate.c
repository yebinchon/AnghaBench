
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_exts {struct tc_action* action; } ;
struct tcf_ext_map {size_t police; size_t action; } ;
struct tc_action {int type; } ;
struct nlattr {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct tc_action*) ;
 int PTR_ERR (struct tc_action*) ;
 int TCA_ACT_BIND ;
 int TCA_ACT_NOREPLACE ;
 int TCA_OLD_COMPAT ;
 int memset (struct tcf_exts*,int ,int) ;
 struct tc_action* tcf_action_init (struct nlattr*,struct nlattr*,int *,int ,int ) ;
 struct tc_action* tcf_action_init_1 (struct nlattr*,struct nlattr*,char*,int ,int ) ;

int tcf_exts_validate(struct tcf_proto *tp, struct nlattr **tb,
    struct nlattr *rate_tlv, struct tcf_exts *exts,
    const struct tcf_ext_map *map)
{
 memset(exts, 0, sizeof(*exts));
 if ((map->action && tb[map->action]) ||
     (map->police && tb[map->police]))
  return -EOPNOTSUPP;


 return 0;
}
