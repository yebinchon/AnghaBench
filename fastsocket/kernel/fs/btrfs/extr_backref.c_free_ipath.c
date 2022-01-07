
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_fs_paths {struct inode_fs_paths* fspath; } ;


 int kfree (struct inode_fs_paths*) ;

void free_ipath(struct inode_fs_paths *ipath)
{
 if (!ipath)
  return;
 kfree(ipath->fspath);
 kfree(ipath);
}
