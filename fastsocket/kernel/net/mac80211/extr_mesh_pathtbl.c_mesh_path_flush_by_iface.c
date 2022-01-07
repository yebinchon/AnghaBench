
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int pathtbl_resize_lock ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct mesh_table* resize_dereference_mesh_paths () ;
 struct mesh_table* resize_dereference_mpp_paths () ;
 int table_flush_by_iface (struct mesh_table*,struct ieee80211_sub_if_data*) ;

void mesh_path_flush_by_iface(struct ieee80211_sub_if_data *sdata)
{
 struct mesh_table *tbl;

 rcu_read_lock();
 read_lock_bh(&pathtbl_resize_lock);
 tbl = resize_dereference_mesh_paths();
 table_flush_by_iface(tbl, sdata);
 tbl = resize_dereference_mpp_paths();
 table_flush_by_iface(tbl, sdata);
 read_unlock_bh(&pathtbl_resize_lock);
 rcu_read_unlock();
}
