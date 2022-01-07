
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_edge {int call_stmt; } ;
typedef int hashval_t ;


 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
edge_hash (const void *x)
{
  return htab_hash_pointer (((struct cgraph_edge *) x)->call_stmt);
}
