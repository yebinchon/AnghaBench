
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_res {int l_flags; int l_lock; } ;
struct ocfs2_inode_info {int ip_lock; int ip_flags; } ;
struct ocfs2_dentry_lock {int dl_count; int dl_parent_blkno; int dl_inode; } ;
struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int DLM_LOCK_PR ;
 struct ocfs2_inode_info* OCFS2_I (int ) ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 int OCFS2_LOCK_FREEING ;
 int UNBLOCK_CONTINUE ;
 int UNBLOCK_CONTINUE_POST ;
 int UNBLOCK_STOP_POST ;
 int d_delete (struct dentry*) ;
 int dentry_attach_lock ;
 int dput (struct dentry*) ;
 int mlog (int ,char*,int,...) ;
 struct dentry* ocfs2_find_local_alias (int ,int ,int) ;
 struct ocfs2_dentry_lock* ocfs2_lock_res_dl (struct ocfs2_lock_res*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_dentry_convert_worker(struct ocfs2_lock_res *lockres,
           int blocking)
{
 struct ocfs2_dentry_lock *dl = ocfs2_lock_res_dl(lockres);
 struct ocfs2_inode_info *oi = OCFS2_I(dl->dl_inode);
 struct dentry *dentry;
 unsigned long flags;
 int extra_ref = 0;
 if (blocking == DLM_LOCK_PR)
  return UNBLOCK_CONTINUE;






 spin_lock(&oi->ip_lock);
 oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
 spin_unlock(&oi->ip_lock);







 spin_lock_irqsave(&lockres->l_lock, flags);
 spin_lock(&dentry_attach_lock);
 if (!(lockres->l_flags & OCFS2_LOCK_FREEING)
     && dl->dl_count) {
  dl->dl_count++;
  extra_ref = 1;
 }
 spin_unlock(&dentry_attach_lock);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 mlog(0, "extra_ref = %d\n", extra_ref);






 if (!extra_ref)
  return UNBLOCK_CONTINUE;

 spin_lock(&dentry_attach_lock);
 while (1) {
  dentry = ocfs2_find_local_alias(dl->dl_inode,
      dl->dl_parent_blkno, 1);
  if (!dentry)
   break;
  spin_unlock(&dentry_attach_lock);

  mlog(0, "d_delete(%.*s);\n", dentry->d_name.len,
       dentry->d_name.name);
  d_delete(dentry);
  dput(dentry);

  spin_lock(&dentry_attach_lock);
 }
 spin_unlock(&dentry_attach_lock);





 if (dl->dl_count == 1)
  return UNBLOCK_STOP_POST;

 return UNBLOCK_CONTINUE_POST;
}
