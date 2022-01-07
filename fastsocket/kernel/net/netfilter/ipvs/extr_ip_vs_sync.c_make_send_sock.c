
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; int sk; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;


 struct socket* ERR_PTR (int) ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int bind_mcastif_addr (struct socket*,int ) ;
 int ip_vs_master_mcast_ifn ;
 int mcast_addr ;
 int pr_err (char*) ;
 int set_mcast_if (int ,int ) ;
 int set_mcast_loop (int ,int ) ;
 int set_mcast_ttl (int ,int) ;
 int set_sock_size (int ,int,int) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;
 int sysctl_sync_sock_size () ;

__attribute__((used)) static struct socket * make_send_sock(void)
{
 struct socket *sock;
 int result;


 result = sock_create_kern(PF_INET, SOCK_DGRAM, IPPROTO_UDP, &sock);
 if (result < 0) {
  pr_err("Error during creation of socket; terminating\n");
  return ERR_PTR(result);
 }

 result = set_mcast_if(sock->sk, ip_vs_master_mcast_ifn);
 if (result < 0) {
  pr_err("Error setting outbound mcast interface\n");
  goto error;
 }

 set_mcast_loop(sock->sk, 0);
 set_mcast_ttl(sock->sk, 1);
 result = sysctl_sync_sock_size();
 if (result > 0)
  set_sock_size(sock->sk, 1, result);

 result = bind_mcastif_addr(sock, ip_vs_master_mcast_ifn);
 if (result < 0) {
  pr_err("Error binding address of the mcast interface\n");
  goto error;
 }

 result = sock->ops->connect(sock, (struct sockaddr *) &mcast_addr,
   sizeof(struct sockaddr), 0);
 if (result < 0) {
  pr_err("Error connecting to the multicast addr\n");
  goto error;
 }

 return sock;

  error:
 sock_release(sock);
 return ERR_PTR(result);
}
