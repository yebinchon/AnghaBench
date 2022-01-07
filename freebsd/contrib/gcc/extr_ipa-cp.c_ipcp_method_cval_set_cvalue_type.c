
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;
struct TYPE_4__ {TYPE_1__* ipcp_cval; } ;
struct TYPE_3__ {int cval_type; } ;


 TYPE_2__* IPA_NODE_REF (struct cgraph_node*) ;

__attribute__((used)) static inline void
ipcp_method_cval_set_cvalue_type (struct cgraph_node *mt, int i,
      enum cvalue_type cval_type1)
{
  IPA_NODE_REF (mt)->ipcp_cval[i].cval_type = cval_type1;
}
