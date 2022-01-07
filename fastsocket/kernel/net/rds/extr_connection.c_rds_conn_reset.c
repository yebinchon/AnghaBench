
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {scalar_t__ c_flags; int c_faddr; int c_laddr; } ;


 int rds_send_reset (struct rds_connection*) ;
 int rds_stats_inc (int ) ;
 int rdsdebug (char*,int *,int *) ;
 int s_conn_reset ;

__attribute__((used)) static void rds_conn_reset(struct rds_connection *conn)
{
 rdsdebug("connection %pI4 to %pI4 reset\n",
   &conn->c_laddr, &conn->c_faddr);

 rds_stats_inc(s_conn_reset);
 rds_send_reset(conn);
 conn->c_flags = 0;





}
