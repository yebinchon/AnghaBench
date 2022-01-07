
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; } ;
struct TYPE_2__ {scalar_t__ fileset; } ;


 int COMMIT_Freewmap ;
 scalar_t__ FILESYSTEM_I ;
 TYPE_1__* JFS_IP (struct inode*) ;
 int clear_inode (struct inode*) ;
 int diFree (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int jfs_free_zero_link (struct inode*) ;
 int jfs_info (char*,struct inode*) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 int truncate_inode_pages (int *,int ) ;
 int vfs_dq_drop (struct inode*) ;
 int vfs_dq_free_inode (struct inode*) ;
 int vfs_dq_init (struct inode*) ;

void jfs_delete_inode(struct inode *inode)
{
 jfs_info("In jfs_delete_inode, inode = 0x%p", inode);

 if (!is_bad_inode(inode) &&
     (JFS_IP(inode)->fileset == FILESYSTEM_I)) {
  truncate_inode_pages(&inode->i_data, 0);

  if (test_cflag(COMMIT_Freewmap, inode))
   jfs_free_zero_link(inode);

  diFree(inode);




  vfs_dq_init(inode);
  vfs_dq_free_inode(inode);
  vfs_dq_drop(inode);
 }

 clear_inode(inode);
}
