
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bearer {int link_req; int nodes; } ;


 int tipc_bcbearer_sort () ;
 int tipc_disc_update_link_req (int ) ;
 int tipc_nmap_add (int *,int ) ;

void tipc_bearer_add_dest(struct bearer *b_ptr, u32 dest)
{
 tipc_nmap_add(&b_ptr->nodes, dest);
 tipc_disc_update_link_req(b_ptr->link_req);
 tipc_bcbearer_sort();
}
