
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_varpool_node {int decl; } ;


 scalar_t__ DECL_UID (int ) ;

__attribute__((used)) static int
eq_varpool_node (const void *p1, const void *p2)
{
  const struct cgraph_varpool_node *n1 =
    (const struct cgraph_varpool_node *) p1;
  const struct cgraph_varpool_node *n2 =
    (const struct cgraph_varpool_node *) p2;
  return DECL_UID (n1->decl) == DECL_UID (n2->decl);
}
