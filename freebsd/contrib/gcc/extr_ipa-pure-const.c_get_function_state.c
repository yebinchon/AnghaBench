
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipa_dfs_info {int aux; } ;
struct cgraph_node {struct ipa_dfs_info* aux; } ;
typedef int funct_state ;



__attribute__((used)) static inline funct_state
get_function_state (struct cgraph_node *node)
{
  struct ipa_dfs_info * info = node->aux;
  return info->aux;
}
