
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_context {scalar_t__ ac_which; int * ac_bh; struct inode* ac_inode; } ;
struct inode {int i_mutex; } ;


 scalar_t__ OCFS2_AC_USE_LOCAL ;
 int brelse (int *) ;
 int iput (struct inode*) ;
 int mutex_unlock (int *) ;
 int ocfs2_inode_unlock (struct inode*,int) ;

void ocfs2_free_ac_resource(struct ocfs2_alloc_context *ac)
{
 struct inode *inode = ac->ac_inode;

 if (inode) {
  if (ac->ac_which != OCFS2_AC_USE_LOCAL)
   ocfs2_inode_unlock(inode, 1);

  mutex_unlock(&inode->i_mutex);

  iput(inode);
  ac->ac_inode = ((void*)0);
 }
 brelse(ac->ac_bh);
 ac->ac_bh = ((void*)0);
}
