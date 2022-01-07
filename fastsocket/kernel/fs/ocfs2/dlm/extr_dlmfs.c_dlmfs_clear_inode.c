
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int * i_ino; } ;
struct dlmfs_inode_private {int * ip_dlm; int * ip_parent; int ip_lockres; } ;


 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int iput (int *) ;
 int mlog (int ,char*,int *) ;
 int mlog_errno (int) ;
 int user_dlm_destroy_lock (int *) ;
 int user_dlm_unregister_context (int *) ;

__attribute__((used)) static void dlmfs_clear_inode(struct inode *inode)
{
 int status;
 struct dlmfs_inode_private *ip;

 if (!inode)
  return;

 mlog(0, "inode %lu\n", inode->i_ino);

 ip = DLMFS_I(inode);

 if (S_ISREG(inode->i_mode)) {
  status = user_dlm_destroy_lock(&ip->ip_lockres);
  if (status < 0)
   mlog_errno(status);
  iput(ip->ip_parent);
  goto clear_fields;
 }

 mlog(0, "we're a directory, ip->ip_dlm = 0x%p\n", ip->ip_dlm);


 if (ip->ip_dlm)
  user_dlm_unregister_context(ip->ip_dlm);
clear_fields:
 ip->ip_parent = ((void*)0);
 ip->ip_dlm = ((void*)0);
}
