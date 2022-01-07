
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
typedef int gcov_type ;
struct TYPE_2__ {int count_scale; } ;


 TYPE_1__* IPA_NODE_REF (struct cgraph_node*) ;

__attribute__((used)) static inline void
ipcp_method_set_scale (struct cgraph_node *node, gcov_type count)
{
  IPA_NODE_REF (node)->count_scale = count;
}
