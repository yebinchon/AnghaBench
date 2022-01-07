
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_ipx {int sipx_port; int sipx_node; int sipx_network; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct ipx_sock {int port; int node; } ;
struct ipx_interface {int if_node; } ;


 int CAP_NET_ADMIN ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ IPX_MIN_EPHEMERAL_SOCKET ;
 int IPX_NODE_LEN ;
 int SOCK_DEBUG (struct sock*,char*,scalar_t__) ;
 int SOCK_ZAPPED ;
 int capable (int ) ;
 int ipx_broadcast_node ;
 int ipx_first_free_socketnum (struct ipx_interface*) ;
 struct ipx_interface* ipx_internal_net ;
 struct ipx_sock* ipx_sk (struct sock*) ;
 int ipx_this_node ;
 scalar_t__ ipxitf_find_internal_socket (struct ipx_interface*,int ,int) ;
 scalar_t__ ipxitf_find_socket (struct ipx_interface*,int) ;
 struct ipx_interface* ipxitf_find_using_net (int ) ;
 int ipxitf_insert_socket (struct ipx_interface*,struct sock*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ ntohs (int) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int ipx_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 struct ipx_sock *ipxs = ipx_sk(sk);
 struct ipx_interface *intrfc;
 struct sockaddr_ipx *addr = (struct sockaddr_ipx *)uaddr;
 int rc = -EINVAL;

 if (!sock_flag(sk, SOCK_ZAPPED) || addr_len != sizeof(struct sockaddr_ipx))
  goto out;

 intrfc = ipxitf_find_using_net(addr->sipx_network);
 rc = -EADDRNOTAVAIL;
 if (!intrfc)
  goto out;

 if (!addr->sipx_port) {
  addr->sipx_port = ipx_first_free_socketnum(intrfc);
  rc = -EINVAL;
  if (!addr->sipx_port)
   goto out_put;
 }


 rc = -EACCES;
 if (ntohs(addr->sipx_port) < IPX_MIN_EPHEMERAL_SOCKET &&
     !capable(CAP_NET_ADMIN))
  goto out_put;

 ipxs->port = addr->sipx_port;
 rc = -EADDRINUSE;
 if (ipxitf_find_socket(intrfc, addr->sipx_port)) {
  SOCK_DEBUG(sk, "IPX: bind failed because port %X in use.\n",
    ntohs((int)addr->sipx_port));
  goto out_put;
 }



 ipxitf_insert_socket(intrfc, sk);
 sock_reset_flag(sk, SOCK_ZAPPED);

 rc = 0;
out_put:
 ipxitf_put(intrfc);
out:
 return rc;
}
