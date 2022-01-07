
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct sock_xprt {int xprt; int sock; } ;
typedef int any ;


 int AF_UNSPEC ;
 int dprintk (char*,...) ;
 int kernel_connect (int ,struct sockaddr*,int,int ) ;
 int memset (struct sockaddr*,int ,int) ;
 int xs_sock_reset_connection_flags (int *) ;

__attribute__((used)) static void xs_abort_connection(struct sock_xprt *transport)
{
 int result;
 struct sockaddr any;

 dprintk("RPC:       disconnecting xprt %p to reuse port\n", transport);





 memset(&any, 0, sizeof(any));
 any.sa_family = AF_UNSPEC;
 result = kernel_connect(transport->sock, &any, sizeof(any), 0);
 if (!result)
  xs_sock_reset_connection_flags(&transport->xprt);
 dprintk("RPC:       AF_UNSPEC connect return code %d\n", result);
}
