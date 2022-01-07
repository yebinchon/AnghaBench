
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct inode* root_inode; struct inode* sys_root_inode; struct inode** system_inodes; } ;
struct inode {int dummy; } ;


 int NUM_SYSTEM_INODES ;
 int iput (struct inode*) ;
 int mlog_entry_void () ;
 int mlog_exit (int ) ;

__attribute__((used)) static void ocfs2_release_system_inodes(struct ocfs2_super *osb)
{
 int i;
 struct inode *inode;

 mlog_entry_void();

 for (i = 0; i < NUM_SYSTEM_INODES; i++) {
  inode = osb->system_inodes[i];
  if (inode) {
   iput(inode);
   osb->system_inodes[i] = ((void*)0);
  }
 }

 inode = osb->sys_root_inode;
 if (inode) {
  iput(inode);
  osb->sys_root_inode = ((void*)0);
 }

 inode = osb->root_inode;
 if (inode) {
  iput(inode);
  osb->root_inode = ((void*)0);
 }

 mlog_exit(0);
}
