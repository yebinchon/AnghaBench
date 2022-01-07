
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int next_nid_to_free; } ;
typedef int nodemask_t ;


 int VM_BUG_ON (int) ;
 int get_valid_node_allowed (int ,int *) ;
 int next_node_allowed (int,int *) ;

__attribute__((used)) static int hstate_next_node_to_free(struct hstate *h, nodemask_t *nodes_allowed)
{
 int nid;

 VM_BUG_ON(!nodes_allowed);

 nid = get_valid_node_allowed(h->next_nid_to_free, nodes_allowed);
 h->next_nid_to_free = next_node_allowed(nid, nodes_allowed);

 return nid;
}
