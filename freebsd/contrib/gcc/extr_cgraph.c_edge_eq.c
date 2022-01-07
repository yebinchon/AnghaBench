
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_edge {void const* call_stmt; } ;



__attribute__((used)) static int
edge_eq (const void *x, const void *y)
{
  return ((struct cgraph_edge *) x)->call_stmt == y;
}
