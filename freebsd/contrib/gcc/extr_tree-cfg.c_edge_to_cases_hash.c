
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_to_cases_elt {int e; } ;
typedef int hashval_t ;
typedef int edge ;


 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
edge_to_cases_hash (const void *p)
{
  edge e = ((struct edge_to_cases_elt *)p)->e;


  return htab_hash_pointer (e);
}
