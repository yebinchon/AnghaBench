
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_portid {int node; int ref; } ;
struct sk_buff {int dummy; } ;


 int TIPC_PORT_IMPORTANCE ;
 int tipc_forward_buf2port (int ,struct tipc_portid const*,struct sk_buff*,unsigned int,struct tipc_portid*,int ) ;
 int tipc_own_addr ;

int tipc_send_buf2port(u32 ref,
         struct tipc_portid const *dest,
         struct sk_buff *buf,
         unsigned int dsz)
{
 struct tipc_portid orig;

 orig.ref = ref;
 orig.node = tipc_own_addr;
 return tipc_forward_buf2port(ref, dest, buf, dsz, &orig,
         TIPC_PORT_IMPORTANCE);
}
