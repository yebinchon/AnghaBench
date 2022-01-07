
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_map_item; int c_lcong; } ;


 int list_del_init (int *) ;
 int rds_cong_lock ;
 int rdsdebug (char*,struct rds_connection*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rds_cong_remove_conn(struct rds_connection *conn)
{
 unsigned long flags;

 rdsdebug("removing conn %p from map %p\n", conn, conn->c_lcong);
 spin_lock_irqsave(&rds_cong_lock, flags);
 list_del_init(&conn->c_map_item);
 spin_unlock_irqrestore(&rds_cong_lock, flags);
}
