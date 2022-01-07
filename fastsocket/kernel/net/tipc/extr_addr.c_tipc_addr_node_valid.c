
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ tipc_addr_domain_valid (int ) ;
 scalar_t__ tipc_node (int ) ;

int tipc_addr_node_valid(u32 addr)
{
 return (tipc_addr_domain_valid(addr) && tipc_node(addr));
}
