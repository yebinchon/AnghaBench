
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int ip_dyn_features; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 scalar_t__ i_size_read (struct inode*) ;
 int mlog (int ,char*,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_check_range_for_holes (struct inode*,scalar_t__,size_t) ;
 int ocfs2_check_range_for_refcount (struct inode*,scalar_t__,size_t) ;
 int ocfs2_inode_lock (struct inode*,int *,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_prepare_inode_for_refcount (struct inode*,scalar_t__,size_t,int*) ;
 int ocfs2_write_remove_suid (struct inode*) ;
 scalar_t__ should_remove_suid (struct dentry*) ;

__attribute__((used)) static int ocfs2_prepare_inode_for_write(struct dentry *dentry,
      loff_t *ppos,
      size_t count,
      int appending,
      int *direct_io)
{
 int ret = 0, meta_level = 0;
 struct inode *inode = dentry->d_inode;
 loff_t saved_pos, end;





 for(;;) {
  ret = ocfs2_inode_lock(inode, ((void*)0), meta_level);
  if (ret < 0) {
   meta_level = -1;
   mlog_errno(ret);
   goto out;
  }
  if (should_remove_suid(dentry)) {
   if (meta_level == 0) {
    ocfs2_inode_unlock(inode, meta_level);
    meta_level = 1;
    continue;
   }

   ret = ocfs2_write_remove_suid(inode);
   if (ret < 0) {
    mlog_errno(ret);
    goto out_unlock;
   }
  }



  if (appending) {
   saved_pos = i_size_read(inode);
   mlog(0, "O_APPEND: inode->i_size=%llu\n", saved_pos);
  } else {
   saved_pos = *ppos;
  }

  end = saved_pos + count;

  ret = ocfs2_check_range_for_refcount(inode, saved_pos, count);
  if (ret == 1) {
   ocfs2_inode_unlock(inode, meta_level);
   meta_level = -1;

   ret = ocfs2_prepare_inode_for_refcount(inode,
              saved_pos,
              count,
              &meta_level);
  }

  if (ret < 0) {
   mlog_errno(ret);
   goto out_unlock;
  }





  if (!direct_io || !(*direct_io))
   break;





  if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
   *direct_io = 0;
   break;
  }







  if (end > i_size_read(inode)) {
   *direct_io = 0;
   break;
  }







  ret = ocfs2_check_range_for_holes(inode, saved_pos, count);
  if (ret == 1) {
   *direct_io = 0;
   ret = 0;
  } else if (ret < 0)
   mlog_errno(ret);
  break;
 }

 if (appending)
  *ppos = saved_pos;

out_unlock:
 if (meta_level >= 0)
  ocfs2_inode_unlock(inode, meta_level);

out:
 return ret;
}
