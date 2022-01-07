
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_varpool_node {int decl; } ;
struct TYPE_2__ {char const* (* decl_printable_name ) (int ,int) ;} ;


 TYPE_1__ lang_hooks ;
 char const* stub1 (int ,int) ;

__attribute__((used)) static const char *
cgraph_varpool_node_name (struct cgraph_varpool_node *node)
{
  return lang_hooks.decl_printable_name (node->decl, 2);
}
