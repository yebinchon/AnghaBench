
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_recent_mtinfo {int name; } ;
struct xt_mtdtor_param {struct xt_recent_mtinfo* matchinfo; } ;
struct recent_table {scalar_t__ refcnt; int name; int list; } ;


 int kfree (struct recent_table*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_old_dir ;
 int recent_lock ;
 int recent_mutex ;
 int recent_proc_dir ;
 int recent_table_flush (struct recent_table*) ;
 struct recent_table* recent_table_lookup (int ) ;
 int remove_proc_entry (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void recent_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_recent_mtinfo *info = par->matchinfo;
 struct recent_table *t;

 mutex_lock(&recent_mutex);
 t = recent_table_lookup(info->name);
 if (--t->refcnt == 0) {
  spin_lock_bh(&recent_lock);
  list_del(&t->list);
  spin_unlock_bh(&recent_lock);






  recent_table_flush(t);
  kfree(t);
 }
 mutex_unlock(&recent_mutex);
}
