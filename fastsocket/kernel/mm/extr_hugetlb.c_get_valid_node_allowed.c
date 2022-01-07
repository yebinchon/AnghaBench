
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;


 int next_node_allowed (int,int *) ;
 int node_isset (int,int ) ;

__attribute__((used)) static int get_valid_node_allowed(int nid, nodemask_t *nodes_allowed)
{
 if (!node_isset(nid, *nodes_allowed))
  nid = next_node_allowed(nid, nodes_allowed);
 return nid;
}
