
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int filemap_fdatawrite (int ) ;
 int v9fs_cache_inode_put_cookie (struct inode*) ;

void v9fs_clear_inode(struct inode *inode)
{
 filemap_fdatawrite(inode->i_mapping);




}
