
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; } ;
struct fuse_inode {scalar_t__ writectr; int page_waitq; } ;
struct fuse_conn {int lock; } ;


 int BUG_ON (int) ;
 scalar_t__ FUSE_NOWRITE ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int mutex_is_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

void fuse_set_nowrite(struct inode *inode)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 BUG_ON(!mutex_is_locked(&inode->i_mutex));

 spin_lock(&fc->lock);
 BUG_ON(fi->writectr < 0);
 fi->writectr += FUSE_NOWRITE;
 spin_unlock(&fc->lock);
 wait_event(fi->page_waitq, fi->writectr == FUSE_NOWRITE);
}
