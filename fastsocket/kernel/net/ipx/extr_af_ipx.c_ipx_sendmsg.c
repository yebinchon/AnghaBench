
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_ipx {scalar_t__ sipx_family; int sipx_node; scalar_t__ sipx_network; scalar_t__ sipx_port; int sipx_type; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct ipxhdr {int dummy; } ;
struct TYPE_4__ {int node; scalar_t__ net; scalar_t__ sock; } ;
struct ipx_sock {TYPE_2__ dest_addr; int type; TYPE_1__* intrfc; int port; } ;
struct TYPE_3__ {int if_node; } ;


 scalar_t__ AF_IPX ;
 int EINVAL ;
 int ENETDOWN ;
 int ENOTCONN ;
 int IPX_NODE_LEN ;
 int MSG_CMSG_COMPAT ;
 int MSG_DONTWAIT ;
 scalar_t__ TCP_ESTABLISHED ;
 int ipx_bind (struct socket*,struct sockaddr*,int) ;
 struct ipx_sock* ipx_sk (struct sock*) ;
 int ipxrtr_route_packet (struct sock*,struct sockaddr_ipx*,int ,size_t,int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ipx_sendmsg(struct kiocb *iocb, struct socket *sock,
 struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct ipx_sock *ipxs = ipx_sk(sk);
 struct sockaddr_ipx *usipx = (struct sockaddr_ipx *)msg->msg_name;
 struct sockaddr_ipx local_sipx;
 int rc = -EINVAL;
 int flags = msg->msg_flags;




 if (flags & ~(MSG_DONTWAIT|MSG_CMSG_COMPAT))
  goto out;


 if (len >= 65535 - sizeof(struct ipxhdr))
  goto out;

 if (usipx) {
  if (!ipxs->port) {
   struct sockaddr_ipx uaddr;

   uaddr.sipx_port = 0;
   uaddr.sipx_network = 0;







   rc = ipx_bind(sock, (struct sockaddr *)&uaddr,
     sizeof(struct sockaddr_ipx));
   if (rc)
    goto out;
  }

  rc = -EINVAL;
  if (msg->msg_namelen < sizeof(*usipx) ||
      usipx->sipx_family != AF_IPX)
   goto out;
 } else {
  rc = -ENOTCONN;
  if (sk->sk_state != TCP_ESTABLISHED)
   goto out;

  usipx = &local_sipx;
  usipx->sipx_family = AF_IPX;
  usipx->sipx_type = ipxs->type;
  usipx->sipx_port = ipxs->dest_addr.sock;
  usipx->sipx_network = ipxs->dest_addr.net;
  memcpy(usipx->sipx_node, ipxs->dest_addr.node, IPX_NODE_LEN);
 }

 rc = ipxrtr_route_packet(sk, usipx, msg->msg_iov, len,
     flags & MSG_DONTWAIT);
 if (rc >= 0)
  rc = len;
out:
 return rc;
}
