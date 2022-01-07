
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_portid {int node; int ref; } ;
struct tipc_name {int dummy; } ;
struct iovec {int dummy; } ;


 int TIPC_PORT_IMPORTANCE ;
 int tipc_forward2name (int ,struct tipc_name const*,unsigned int,unsigned int,struct iovec const*,struct tipc_portid*,int ) ;
 int tipc_own_addr ;

int tipc_send2name(u32 ref,
     struct tipc_name const *name,
     unsigned int domain,
     unsigned int num_sect,
     struct iovec const *msg_sect)
{
 struct tipc_portid orig;

 orig.ref = ref;
 orig.node = tipc_own_addr;
 return tipc_forward2name(ref, name, domain, num_sect, msg_sect, &orig,
     TIPC_PORT_IMPORTANCE);
}
