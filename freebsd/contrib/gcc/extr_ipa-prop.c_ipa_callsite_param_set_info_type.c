
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct cgraph_edge {int dummy; } ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ info_type; } ;


 TYPE_2__* ipa_callsite_param (struct cgraph_edge*,int) ;

__attribute__((used)) static inline void
ipa_callsite_param_set_info_type (struct cgraph_edge *cs, int i, tree info_type1)
{
  ipa_callsite_param (cs, i)->info_type.value = info_type1;
}
