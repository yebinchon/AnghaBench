
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_edge {int dummy; } ;


 int cgraph_edge_remove_callee (struct cgraph_edge*) ;
 int cgraph_edge_remove_caller (struct cgraph_edge*) ;

void
cgraph_remove_edge (struct cgraph_edge *e)
{

  cgraph_edge_remove_callee (e);


  cgraph_edge_remove_caller (e);
}
