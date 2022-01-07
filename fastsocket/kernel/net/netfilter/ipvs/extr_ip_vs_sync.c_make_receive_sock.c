
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_2__* sk; TYPE_1__* ops; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_7__ {int sin_addr; } ;
struct TYPE_6__ {int sk_reuse; } ;
struct TYPE_5__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;


 struct socket* ERR_PTR (int) ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int ip_vs_backup_mcast_ifn ;
 int join_mcast_group (TYPE_2__*,struct in_addr*,int ) ;
 TYPE_3__ mcast_addr ;
 int pr_err (char*) ;
 int set_sock_size (TYPE_2__*,int ,int) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;
 int sysctl_sync_sock_size () ;

__attribute__((used)) static struct socket * make_receive_sock(void)
{
 struct socket *sock;
 int result;


 result = sock_create_kern(PF_INET, SOCK_DGRAM, IPPROTO_UDP, &sock);
 if (result < 0) {
  pr_err("Error during creation of socket; terminating\n");
  return ERR_PTR(result);
 }


 sock->sk->sk_reuse = 1;
 result = sysctl_sync_sock_size();
 if (result > 0)
  set_sock_size(sock->sk, 0, result);

 result = sock->ops->bind(sock, (struct sockaddr *) &mcast_addr,
   sizeof(struct sockaddr));
 if (result < 0) {
  pr_err("Error binding to the multicast addr\n");
  goto error;
 }


 result = join_mcast_group(sock->sk,
   (struct in_addr *) &mcast_addr.sin_addr,
   ip_vs_backup_mcast_ifn);
 if (result < 0) {
  pr_err("Error joining to the multicast group\n");
  goto error;
 }

 return sock;

  error:
 sock_release(sock);
 return ERR_PTR(result);
}
