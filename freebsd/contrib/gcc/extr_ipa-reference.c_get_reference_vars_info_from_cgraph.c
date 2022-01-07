
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int decl; } ;
typedef int ipa_reference_vars_info_t ;
struct TYPE_2__ {int reference_vars_info; } ;


 TYPE_1__* get_function_ann (int ) ;

__attribute__((used)) static inline ipa_reference_vars_info_t
get_reference_vars_info_from_cgraph (struct cgraph_node * node)
{
  return get_function_ann (node->decl)->reference_vars_info;
}
