
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rds_sock {scalar_t__ rs_conn_addr; int rs_conn_port; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;
 int lock_sock (struct sock*) ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int rds_connect(struct socket *sock, struct sockaddr *uaddr,
         int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct sockaddr_in *sin = (struct sockaddr_in *)uaddr;
 struct rds_sock *rs = rds_sk_to_rs(sk);
 int ret = 0;

 lock_sock(sk);

 if (addr_len != sizeof(struct sockaddr_in)) {
  ret = -EINVAL;
  goto out;
 }

 if (sin->sin_family != AF_INET) {
  ret = -EAFNOSUPPORT;
  goto out;
 }

 if (sin->sin_addr.s_addr == htonl(INADDR_ANY)) {
  ret = -EDESTADDRREQ;
  goto out;
 }

 rs->rs_conn_addr = sin->sin_addr.s_addr;
 rs->rs_conn_port = sin->sin_port;

out:
 release_sock(sk);
 return ret;
}
