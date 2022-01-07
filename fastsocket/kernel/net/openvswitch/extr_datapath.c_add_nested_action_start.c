
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int actions_len; } ;


 int add_action (struct sw_flow_actions**,int,int *,int ) ;

__attribute__((used)) static inline int add_nested_action_start(struct sw_flow_actions **sfa, int attrtype)
{
 int used = (*sfa)->actions_len;
 int err;

 err = add_action(sfa, attrtype, ((void*)0), 0);
 if (err)
  return err;

 return used;
}
