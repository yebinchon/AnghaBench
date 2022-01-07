
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipcp_formal {int cval_type; } ;
struct cgraph_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ipcp_cval; } ;
struct TYPE_3__ {int cval_type; } ;


 TYPE_2__* IPA_NODE_REF (struct cgraph_node*) ;
 int ipcp_cval_get_cvalue (struct ipcp_formal*) ;
 int ipcp_cval_set_cvalue (int ,int ,int ) ;
 int ipcp_method_cval (struct cgraph_node*,int) ;

__attribute__((used)) static inline void
ipcp_method_cval_set (struct cgraph_node *mt, int i, struct ipcp_formal *cval)
{
  IPA_NODE_REF (mt)->ipcp_cval[i].cval_type = cval->cval_type;
  ipcp_cval_set_cvalue (ipcp_method_cval (mt, i),
   ipcp_cval_get_cvalue (cval), cval->cval_type);
}
