
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_to_cases_elt {scalar_t__ e; } ;
typedef scalar_t__ edge ;



__attribute__((used)) static int
edge_to_cases_eq (const void *p1, const void *p2)
{
  edge e1 = ((struct edge_to_cases_elt *)p1)->e;
  edge e2 = ((struct edge_to_cases_elt *)p2)->e;

  return e1 == e2;
}
