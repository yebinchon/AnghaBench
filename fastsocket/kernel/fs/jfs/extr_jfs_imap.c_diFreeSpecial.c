
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int filemap_write_and_wait (int ) ;
 int iput (struct inode*) ;
 int jfs_err (char*) ;
 int truncate_inode_pages (int ,int ) ;

void diFreeSpecial(struct inode *ip)
{
 if (ip == ((void*)0)) {
  jfs_err("diFreeSpecial called with NULL ip!");
  return;
 }
 filemap_write_and_wait(ip->i_mapping);
 truncate_inode_pages(ip->i_mapping, 0);
 iput(ip);
}
