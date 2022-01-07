
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;


 int * ipcp_method_orig_node (struct cgraph_node*) ;

__attribute__((used)) static inline bool
ipcp_method_is_cloned (struct cgraph_node *node)
{
  return (ipcp_method_orig_node (node) != ((void*)0));
}
