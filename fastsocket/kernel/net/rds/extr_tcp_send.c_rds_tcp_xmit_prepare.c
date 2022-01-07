
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_tcp_connection {int t_sock; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;


 int rds_tcp_cork (int ,int) ;

void rds_tcp_xmit_prepare(struct rds_connection *conn)
{
 struct rds_tcp_connection *tc = conn->c_transport_data;

 rds_tcp_cork(tc->t_sock, 1);
}
