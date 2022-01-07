
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ register_sysctl_table (int ) ;
 int sunrpc_table ;
 scalar_t__ sunrpc_table_header ;
 int xprt_register_transport (int *) ;
 int xs_bc_tcp_transport ;
 int xs_local_transport ;
 int xs_tcp_transport ;
 int xs_udp_transport ;

int init_socket_xprt(void)
{





 xprt_register_transport(&xs_local_transport);
 xprt_register_transport(&xs_udp_transport);
 xprt_register_transport(&xs_tcp_transport);
 xprt_register_transport(&xs_bc_tcp_transport);

 return 0;
}
