
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_portid {int node; int ref; } ;


 int tipc_own_addr ;

int tipc_ownidentity(u32 ref, struct tipc_portid *id)
{
 id->ref = ref;
 id->node = tipc_own_addr;
 return 0;
}
