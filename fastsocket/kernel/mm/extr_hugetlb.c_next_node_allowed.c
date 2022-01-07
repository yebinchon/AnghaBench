
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;


 int MAX_NUMNODES ;
 int VM_BUG_ON (int) ;
 int first_node (int ) ;
 int next_node (int,int ) ;

__attribute__((used)) static int next_node_allowed(int nid, nodemask_t *nodes_allowed)
{
 nid = next_node(nid, *nodes_allowed);
 if (nid == MAX_NUMNODES)
  nid = first_node(*nodes_allowed);
 VM_BUG_ON(nid >= MAX_NUMNODES);

 return nid;
}
