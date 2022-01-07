
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int id_table_node; } ;


 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wimax_id_table_lock ;

void wimax_id_table_rm(struct wimax_dev *wimax_dev)
{
 spin_lock(&wimax_id_table_lock);
 list_del_init(&wimax_dev->id_table_node);
 spin_unlock(&wimax_id_table_lock);
}
