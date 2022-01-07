
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipa_jump_func {int dummy; } ;
struct cgraph_edge {int dummy; } ;
struct TYPE_2__ {struct ipa_jump_func* ipa_param_map; } ;


 TYPE_1__* IPA_EDGE_REF (struct cgraph_edge*) ;

struct ipa_jump_func *
ipa_callsite_param (struct cgraph_edge *cs, int i)
{
  return &(IPA_EDGE_REF (cs)->ipa_param_map[i]);
}
