
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct inode {int i_mutex; } ;


 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ocfs2_flush_truncate_log(struct ocfs2_super *osb)
{
 int status;
 struct inode *tl_inode = osb->osb_tl_inode;

 mutex_lock(&tl_inode->i_mutex);
 status = __ocfs2_flush_truncate_log(osb);
 mutex_unlock(&tl_inode->i_mutex);

 return status;
}
