
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_edge {int dummy; } ;
struct TYPE_2__ {int ipa_param_num; } ;


 TYPE_1__* IPA_EDGE_REF (struct cgraph_edge*) ;

int
ipa_callsite_param_count (struct cgraph_edge *cs)
{
  return IPA_EDGE_REF (cs)->ipa_param_num;
}
