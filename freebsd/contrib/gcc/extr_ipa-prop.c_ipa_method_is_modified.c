
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int* ipa_mod; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

__attribute__((used)) static inline bool
ipa_method_is_modified (struct cgraph_node *mt, int i)
{
  return IPA_NODE_REF (mt)->ipa_mod[i];
}
