
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_connection {TYPE_1__* c_lcong; int c_map_item; } ;
struct TYPE_2__ {int m_conn_list; } ;


 int list_add_tail (int *,int *) ;
 int rds_cong_lock ;
 int rdsdebug (char*,struct rds_connection*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rds_cong_add_conn(struct rds_connection *conn)
{
 unsigned long flags;

 rdsdebug("conn %p now on map %p\n", conn, conn->c_lcong);
 spin_lock_irqsave(&rds_cong_lock, flags);
 list_add_tail(&conn->c_map_item, &conn->c_lcong->m_conn_list);
 spin_unlock_irqrestore(&rds_cong_lock, flags);
}
