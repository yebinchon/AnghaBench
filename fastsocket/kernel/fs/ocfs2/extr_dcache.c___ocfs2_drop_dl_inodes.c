
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_dentry_lock* dentry_lock_list; } ;
struct ocfs2_dentry_lock {int dl_inode; struct ocfs2_dentry_lock* dl_next; } ;


 int dentry_list_lock ;
 int iput (int ) ;
 int kfree (struct ocfs2_dentry_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __ocfs2_drop_dl_inodes(struct ocfs2_super *osb, int drop_count)
{
 struct ocfs2_dentry_lock *dl;

 spin_lock(&dentry_list_lock);
 while (osb->dentry_lock_list && (drop_count < 0 || drop_count--)) {
  dl = osb->dentry_lock_list;
  osb->dentry_lock_list = dl->dl_next;
  spin_unlock(&dentry_list_lock);
  iput(dl->dl_inode);
  kfree(dl);
  spin_lock(&dentry_list_lock);
 }
 spin_unlock(&dentry_list_lock);
}
