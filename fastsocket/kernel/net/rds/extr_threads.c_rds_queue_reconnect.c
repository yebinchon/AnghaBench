
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {unsigned long c_reconnect_jiffies; int c_conn_w; int c_faddr; int c_laddr; int c_flags; } ;
typedef int rand ;


 int RDS_RECONNECT_PENDING ;
 int get_random_bytes (unsigned long*,int) ;
 unsigned long min (int,int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int rds_sysctl_reconnect_max_jiffies ;
 unsigned long rds_sysctl_reconnect_min_jiffies ;
 int rds_wq ;
 int rdsdebug (char*,...) ;
 int set_bit (int ,int *) ;

void rds_queue_reconnect(struct rds_connection *conn)
{
 unsigned long rand;

 rdsdebug("conn %p for %pI4 to %pI4 reconnect jiffies %lu\n",
   conn, &conn->c_laddr, &conn->c_faddr,
   conn->c_reconnect_jiffies);

 set_bit(RDS_RECONNECT_PENDING, &conn->c_flags);
 if (conn->c_reconnect_jiffies == 0) {
  conn->c_reconnect_jiffies = rds_sysctl_reconnect_min_jiffies;
  queue_delayed_work(rds_wq, &conn->c_conn_w, 0);
  return;
 }

 get_random_bytes(&rand, sizeof(rand));
 rdsdebug("%lu delay %lu ceil conn %p for %pI4 -> %pI4\n",
   rand % conn->c_reconnect_jiffies, conn->c_reconnect_jiffies,
   conn, &conn->c_laddr, &conn->c_faddr);
 queue_delayed_work(rds_wq, &conn->c_conn_w,
      rand % conn->c_reconnect_jiffies);

 conn->c_reconnect_jiffies = min(conn->c_reconnect_jiffies * 2,
     rds_sysctl_reconnect_max_jiffies);
}
