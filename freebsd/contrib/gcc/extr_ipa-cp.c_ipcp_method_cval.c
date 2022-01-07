
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipcp_formal {int dummy; } ;
struct cgraph_node {int dummy; } ;
struct TYPE_2__ {struct ipcp_formal* ipcp_cval; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

__attribute__((used)) static inline struct ipcp_formal *
ipcp_method_cval (struct cgraph_node *mt, int info_type)
{
  return &(IPA_NODE_REF (mt)->ipcp_cval[info_type]);
}
