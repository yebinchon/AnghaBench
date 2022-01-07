
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int id_table_node; } ;


 int d_fnend (int,int *,char*,struct wimax_dev*) ;
 int d_fnstart (int,int *,char*,struct wimax_dev*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wimax_id_table ;
 int wimax_id_table_lock ;

void wimax_id_table_add(struct wimax_dev *wimax_dev)
{
 d_fnstart(3, ((void*)0), "(wimax_dev %p)\n", wimax_dev);
 spin_lock(&wimax_id_table_lock);
 list_add(&wimax_dev->id_table_node, &wimax_id_table);
 spin_unlock(&wimax_id_table_lock);
 d_fnend(3, ((void*)0), "(wimax_dev %p)\n", wimax_dev);
}
