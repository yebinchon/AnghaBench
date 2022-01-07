
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; int sin_port; int sin_zero; } ;
struct sockaddr {int dummy; } ;
struct rds_sock {scalar_t__ rs_bound_addr; int rs_bound_port; scalar_t__ rs_conn_addr; int rs_conn_port; } ;


 int AF_INET ;
 int ENOTCONN ;
 int memset (int ,int ,int) ;
 struct rds_sock* rds_sk_to_rs (int ) ;

__attribute__((used)) static int rds_getname(struct socket *sock, struct sockaddr *uaddr,
         int *uaddr_len, int peer)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)uaddr;
 struct rds_sock *rs = rds_sk_to_rs(sock->sk);

 memset(sin->sin_zero, 0, sizeof(sin->sin_zero));


 if (peer) {
  if (!rs->rs_conn_addr)
   return -ENOTCONN;

  sin->sin_port = rs->rs_conn_port;
  sin->sin_addr.s_addr = rs->rs_conn_addr;
 } else {
  sin->sin_port = rs->rs_bound_port;
  sin->sin_addr.s_addr = rs->rs_bound_addr;
 }

 sin->sin_family = AF_INET;

 *uaddr_len = sizeof(*sin);
 return 0;
}
