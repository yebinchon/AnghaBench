
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* sk; TYPE_1__* ops; int type; } ;
struct rds_connection {int dummy; } ;
struct inet_sock {int daddr; int saddr; int dport; int sport; } ;
struct TYPE_4__ {int sk_protocol; int sk_type; int sk_family; } ;
struct TYPE_3__ {int (* accept ) (struct socket*,struct socket*,int ) ;} ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rds_connection*) ;
 int O_NONBLOCK ;
 int PTR_ERR (struct rds_connection*) ;
 int RDS_CONN_CONNECTING ;
 int RDS_CONN_DOWN ;
 scalar_t__ RDS_CONN_UP ;
 struct inet_sock* inet_sk (TYPE_2__*) ;
 int ntohs (int ) ;
 struct rds_connection* rds_conn_create (int ,int ,int *,int ) ;
 int rds_conn_drop (struct rds_connection*) ;
 scalar_t__ rds_conn_state (struct rds_connection*) ;
 int rds_conn_transition (struct rds_connection*,int ,int ) ;
 int rds_connect_complete (struct rds_connection*) ;
 int rds_tcp_set_callbacks (struct socket*,struct rds_connection*) ;
 int rds_tcp_stats_inc (int ) ;
 int rds_tcp_transport ;
 int rds_tcp_tune (struct socket*) ;
 int rdsdebug (char*,int *,int ,int *,int ) ;
 int s_tcp_connect_raced ;
 int s_tcp_listen_closed_stale ;
 int sock_create_lite (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct socket*,int ) ;

__attribute__((used)) static int rds_tcp_accept_one(struct socket *sock)
{
 struct socket *new_sock = ((void*)0);
 struct rds_connection *conn;
 int ret;
 struct inet_sock *inet;

 ret = sock_create_lite(sock->sk->sk_family, sock->sk->sk_type,
          sock->sk->sk_protocol, &new_sock);
 if (ret)
  goto out;

 new_sock->type = sock->type;
 new_sock->ops = sock->ops;
 ret = sock->ops->accept(sock, new_sock, O_NONBLOCK);
 if (ret < 0)
  goto out;

 rds_tcp_tune(new_sock);

 inet = inet_sk(new_sock->sk);

 rdsdebug("accepted tcp %pI4:%u -> %pI4:%u\n",
   &inet->saddr, ntohs(inet->sport),
   &inet->daddr, ntohs(inet->dport));

 conn = rds_conn_create(inet->saddr, inet->daddr, &rds_tcp_transport,
          GFP_KERNEL);
 if (IS_ERR(conn)) {
  ret = PTR_ERR(conn);
  goto out;
 }




 if (!rds_conn_transition(conn, RDS_CONN_DOWN, RDS_CONN_CONNECTING)) {
  if (rds_conn_state(conn) == RDS_CONN_UP)
   rds_tcp_stats_inc(s_tcp_listen_closed_stale);
  else
   rds_tcp_stats_inc(s_tcp_connect_raced);
  rds_conn_drop(conn);
  ret = 0;
  goto out;
 }

 rds_tcp_set_callbacks(new_sock, conn);
 rds_connect_complete(conn);
 new_sock = ((void*)0);
 ret = 0;

out:
 if (new_sock)
  sock_release(new_sock);
 return ret;
}
