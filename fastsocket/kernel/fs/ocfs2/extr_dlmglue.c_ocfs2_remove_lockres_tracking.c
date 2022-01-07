
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_debug_list; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int ocfs2_dlm_tracking_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_remove_lockres_tracking(struct ocfs2_lock_res *res)
{
 spin_lock(&ocfs2_dlm_tracking_lock);
 if (!list_empty(&res->l_debug_list))
  list_del_init(&res->l_debug_list);
 spin_unlock(&ocfs2_dlm_tracking_lock);
}
