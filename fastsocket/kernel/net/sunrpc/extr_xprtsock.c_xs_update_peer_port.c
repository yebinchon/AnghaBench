
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int * address_strings; } ;


 size_t RPC_DISPLAY_HEX_PORT ;
 size_t RPC_DISPLAY_PORT ;
 int kfree (int ) ;
 int xs_format_common_peer_ports (struct rpc_xprt*) ;

__attribute__((used)) static void xs_update_peer_port(struct rpc_xprt *xprt)
{
 kfree(xprt->address_strings[RPC_DISPLAY_HEX_PORT]);
 kfree(xprt->address_strings[RPC_DISPLAY_PORT]);

 xs_format_common_peer_ports(xprt);
}
