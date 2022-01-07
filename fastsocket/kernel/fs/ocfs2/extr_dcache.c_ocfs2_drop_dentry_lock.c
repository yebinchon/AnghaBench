
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_dentry_lock* dentry_lock_list; int dentry_lock_work; } ;
struct ocfs2_dentry_lock {struct ocfs2_dentry_lock* dl_next; int dl_lockres; } ;


 int OCFS2_OSB_DROP_DENTRY_LOCK_IMMED ;
 int dentry_list_lock ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_simple_drop_lockres (struct ocfs2_super*,int *) ;
 int ocfs2_test_osb_flag (struct ocfs2_super*,int ) ;
 int ocfs2_wq ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_drop_dentry_lock(struct ocfs2_super *osb,
       struct ocfs2_dentry_lock *dl)
{
 ocfs2_simple_drop_lockres(osb, &dl->dl_lockres);
 ocfs2_lock_res_free(&dl->dl_lockres);



 spin_lock(&dentry_list_lock);
 if (!osb->dentry_lock_list &&
     !ocfs2_test_osb_flag(osb, OCFS2_OSB_DROP_DENTRY_LOCK_IMMED))
  queue_work(ocfs2_wq, &osb->dentry_lock_work);
 dl->dl_next = osb->dentry_lock_list;
 osb->dentry_lock_list = dl;
 spin_unlock(&dentry_list_lock);
}
