
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_node {scalar_t__ call_site_hash; struct cgraph_edge* callees; } ;
struct cgraph_edge {scalar_t__ call_stmt; struct cgraph_edge* next_callee; } ;


 int INSERT ;
 int edge_eq ;
 int edge_hash ;
 int gcc_assert (int) ;
 scalar_t__ htab_create_ggc (int,int ,int ,int *) ;
 void** htab_find_slot_with_hash (scalar_t__,scalar_t__,int ,int ) ;
 struct cgraph_edge* htab_find_with_hash (scalar_t__,scalar_t__,int ) ;
 int htab_hash_pointer (scalar_t__) ;

struct cgraph_edge *
cgraph_edge (struct cgraph_node *node, tree call_stmt)
{
  struct cgraph_edge *e, *e2;
  int n = 0;

  if (node->call_site_hash)
    return htab_find_with_hash (node->call_site_hash, call_stmt,
          htab_hash_pointer (call_stmt));






  for (e = node->callees; e; e= e->next_callee)
    {
      if (e->call_stmt == call_stmt)
 break;
      n++;
    }
  if (n > 100)
    {
      node->call_site_hash = htab_create_ggc (120, edge_hash, edge_eq, ((void*)0));
      for (e2 = node->callees; e2; e2 = e2->next_callee)
 {
          void **slot;
   slot = htab_find_slot_with_hash (node->call_site_hash,
        e2->call_stmt,
        htab_hash_pointer (e2->call_stmt),
        INSERT);
   gcc_assert (!*slot);
   *slot = e2;
 }
    }
  return e;
}
