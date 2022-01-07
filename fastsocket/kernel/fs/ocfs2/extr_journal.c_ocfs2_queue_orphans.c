
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_orphan_filldir_priv {struct inode* head; struct ocfs2_super* osb; } ;
struct inode {int i_mutex; } ;
typedef int loff_t ;


 int ENOENT ;
 int ORPHAN_DIR_SYSTEM_INODE ;
 int iput (struct inode*) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_dir_foreach (struct inode*,int *,struct ocfs2_orphan_filldir_priv*,int ) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_orphan_filldir ;

__attribute__((used)) static int ocfs2_queue_orphans(struct ocfs2_super *osb,
          int slot,
          struct inode **head)
{
 int status;
 struct inode *orphan_dir_inode = ((void*)0);
 struct ocfs2_orphan_filldir_priv priv;
 loff_t pos = 0;

 priv.osb = osb;
 priv.head = *head;

 orphan_dir_inode = ocfs2_get_system_file_inode(osb,
             ORPHAN_DIR_SYSTEM_INODE,
             slot);
 if (!orphan_dir_inode) {
  status = -ENOENT;
  mlog_errno(status);
  return status;
 }

 mutex_lock(&orphan_dir_inode->i_mutex);
 status = ocfs2_inode_lock(orphan_dir_inode, ((void*)0), 0);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_dir_foreach(orphan_dir_inode, &pos, &priv,
       ocfs2_orphan_filldir);
 if (status) {
  mlog_errno(status);
  goto out_cluster;
 }

 *head = priv.head;

out_cluster:
 ocfs2_inode_unlock(orphan_dir_inode, 0);
out:
 mutex_unlock(&orphan_dir_inode->i_mutex);
 iput(orphan_dir_inode);
 return status;
}
