
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct TYPE_2__ {struct cgraph_node* ipcp_orig_node; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

__attribute__((used)) static inline struct cgraph_node *
ipcp_method_orig_node (struct cgraph_node *mt)
{
  return IPA_NODE_REF (mt)->ipcp_orig_node;
}
