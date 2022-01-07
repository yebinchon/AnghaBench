
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;


 int GFP_KERNEL ;
 int KM_USER0 ;
 int lock_sock (int ) ;
 int rds_tcp_read_sock (struct rds_connection*,int ,int ) ;
 int rdsdebug (char*,struct rds_connection*,struct rds_tcp_connection*,struct socket*) ;
 int release_sock (int ) ;

int rds_tcp_recv(struct rds_connection *conn)
{
 struct rds_tcp_connection *tc = conn->c_transport_data;
 struct socket *sock = tc->t_sock;
 int ret = 0;

 rdsdebug("recv worker conn %p tc %p sock %p\n", conn, tc, sock);

 lock_sock(sock->sk);
 ret = rds_tcp_read_sock(conn, GFP_KERNEL, KM_USER0);
 release_sock(sock->sk);

 return ret;
}
