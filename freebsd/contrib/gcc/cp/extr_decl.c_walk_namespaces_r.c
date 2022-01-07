
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* walk_namespaces_fn ) (scalar_t__,void*) ;
typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ namespaces; } ;


 TYPE_1__* NAMESPACE_LEVEL (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int stub1 (scalar_t__,void*) ;

__attribute__((used)) static int
walk_namespaces_r (tree namespace, walk_namespaces_fn f, void* data)
{
  int result = 0;
  tree current = NAMESPACE_LEVEL (namespace)->namespaces;

  result |= (*f) (namespace, data);

  for (; current; current = TREE_CHAIN (current))
    result |= walk_namespaces_r (current, f, data);

  return result;
}
