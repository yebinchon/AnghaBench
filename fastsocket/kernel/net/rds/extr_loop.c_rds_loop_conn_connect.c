
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int dummy; } ;


 int rds_connect_complete (struct rds_connection*) ;

__attribute__((used)) static int rds_loop_conn_connect(struct rds_connection *conn)
{
 rds_connect_complete(conn);
 return 0;
}
