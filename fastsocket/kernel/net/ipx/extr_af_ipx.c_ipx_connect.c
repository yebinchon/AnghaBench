
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ type; int state; struct sock* sk; } ;
struct sockaddr_ipx {int sipx_type; int sipx_node; scalar_t__ sipx_port; scalar_t__ sipx_network; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct TYPE_4__ {int node; scalar_t__ sock; scalar_t__ net; } ;
struct ipx_sock {int type; TYPE_2__ dest_addr; TYPE_1__* intrfc; int port; } ;
struct ipx_route {int dummy; } ;
struct TYPE_3__ {int if_node; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENETUNREACH ;
 int IPX_NODE_LEN ;
 scalar_t__ SOCK_DGRAM ;
 int SS_CONNECTED ;
 int SS_UNCONNECTED ;
 int TCP_CLOSE ;
 int TCP_ESTABLISHED ;
 int ipx_bind (struct socket*,struct sockaddr*,int) ;
 scalar_t__ ipx_primary_net ;
 struct ipx_sock* ipx_sk (struct sock*) ;
 struct ipx_route* ipxrtr_lookup (scalar_t__) ;
 int ipxrtr_put (struct ipx_route*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ipx_connect(struct socket *sock, struct sockaddr *uaddr,
 int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct ipx_sock *ipxs = ipx_sk(sk);
 struct sockaddr_ipx *addr;
 int rc = -EINVAL;
 struct ipx_route *rt;

 sk->sk_state = TCP_CLOSE;
 sock->state = SS_UNCONNECTED;

 if (addr_len != sizeof(*addr))
  goto out;
 addr = (struct sockaddr_ipx *)uaddr;


 if (!ipxs->port) {
  struct sockaddr_ipx uaddr;

  uaddr.sipx_port = 0;
  uaddr.sipx_network = 0;
  rc = ipx_bind(sock, (struct sockaddr *)&uaddr,
         sizeof(struct sockaddr_ipx));
  if (rc)
   goto out;
 }



 rt = ipxrtr_lookup(addr->sipx_network);
 rc = -ENETUNREACH;
 if (!rt && !(!addr->sipx_network && ipx_primary_net))
  goto out;

 ipxs->dest_addr.net = addr->sipx_network;
 ipxs->dest_addr.sock = addr->sipx_port;
 memcpy(ipxs->dest_addr.node, addr->sipx_node, IPX_NODE_LEN);
 ipxs->type = addr->sipx_type;

 if (sock->type == SOCK_DGRAM) {
  sock->state = SS_CONNECTED;
  sk->sk_state = TCP_ESTABLISHED;
 }

 if (rt)
  ipxrtr_put(rt);
 rc = 0;
out:
 return rc;
}
