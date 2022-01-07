
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int basic_block ;
struct TYPE_2__ {int (* create_basic_block ) (void*,void*,int ) ;int name; } ;


 size_t CDI_DOMINATORS ;
 size_t CDI_POST_DOMINATORS ;
 int add_to_dominance_info (size_t,int ) ;
 TYPE_1__* cfg_hooks ;
 scalar_t__* dom_computed ;
 int internal_error (char*,int ) ;
 int stub1 (void*,void*,int ) ;

basic_block
create_basic_block (void *head, void *end, basic_block after)
{
  basic_block ret;

  if (!cfg_hooks->create_basic_block)
    internal_error ("%s does not support create_basic_block", cfg_hooks->name);

  ret = cfg_hooks->create_basic_block (head, end, after);

  if (dom_computed[CDI_DOMINATORS])
    add_to_dominance_info (CDI_DOMINATORS, ret);
  if (dom_computed[CDI_POST_DOMINATORS])
    add_to_dominance_info (CDI_POST_DOMINATORS, ret);

  return ret;
}
