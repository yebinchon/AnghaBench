
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int ipa_arg_num; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

int
ipa_method_formal_count (struct cgraph_node *mt)
{
  return IPA_NODE_REF (mt)->ipa_arg_num;
}
