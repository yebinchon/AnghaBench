
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {char const** address_strings; } ;


 size_t RPC_DISPLAY_NETID ;
 size_t RPC_DISPLAY_PROTO ;
 int xs_format_common_peer_addresses (struct rpc_xprt*) ;
 int xs_format_common_peer_ports (struct rpc_xprt*) ;

__attribute__((used)) static void xs_format_peer_addresses(struct rpc_xprt *xprt,
         const char *protocol,
         const char *netid)
{
 xprt->address_strings[RPC_DISPLAY_PROTO] = protocol;
 xprt->address_strings[RPC_DISPLAY_NETID] = netid;
 xs_format_common_peer_addresses(xprt);
 xs_format_common_peer_ports(xprt);
}
