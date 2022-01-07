
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipa_jump_func {int type; } ;
typedef enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;



enum jump_func_type
get_type (struct ipa_jump_func *jf)
{
  return jf->type;
}
