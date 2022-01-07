
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int filemap_fdatawrite (int ) ;
 int sync_mapping_buffers (int ) ;

__attribute__((used)) static int ocfs2_sync_inode(struct inode *inode)
{
 filemap_fdatawrite(inode->i_mapping);
 return sync_mapping_buffers(inode->i_mapping);
}
