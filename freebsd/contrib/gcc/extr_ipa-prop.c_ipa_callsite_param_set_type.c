
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgraph_edge {int dummy; } ;
typedef enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;
struct TYPE_4__ {TYPE_1__* ipa_param_map; } ;
struct TYPE_3__ {int type; } ;


 TYPE_2__* IPA_EDGE_REF (struct cgraph_edge*) ;

__attribute__((used)) static inline void
ipa_callsite_param_set_type (struct cgraph_edge *cs, int i,
        enum jump_func_type type1)
{
  IPA_EDGE_REF (cs)->ipa_param_map[i].type = type1;
}
