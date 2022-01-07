
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {scalar_t__ actions_len; scalar_t__ actions; } ;
struct nlattr {scalar_t__ nla_len; } ;



__attribute__((used)) static inline void add_nested_action_end(struct sw_flow_actions *sfa, int st_offset)
{
 struct nlattr *a = (struct nlattr *) ((unsigned char *)sfa->actions + st_offset);

 a->nla_len = sfa->actions_len - st_offset;
}
