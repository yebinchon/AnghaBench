
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int ipa_arg_num; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

void
ipa_method_formal_count_set (struct cgraph_node *mt, int i)
{
  IPA_NODE_REF (mt)->ipa_arg_num = i;
}
