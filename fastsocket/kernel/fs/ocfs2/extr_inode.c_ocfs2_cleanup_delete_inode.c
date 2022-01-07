
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int mlog (int ,char*,unsigned long long,int) ;
 int truncate_inode_pages (int *,int ) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static void ocfs2_cleanup_delete_inode(struct inode *inode,
           int sync_data)
{
 mlog(0, "Cleanup inode %llu, sync = %d\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno, sync_data);
 if (sync_data)
  write_inode_now(inode, 1);
 truncate_inode_pages(&inode->i_data, 0);
}
