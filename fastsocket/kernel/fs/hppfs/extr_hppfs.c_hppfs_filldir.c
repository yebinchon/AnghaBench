
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hppfs_dirent {int (* filldir ) (int ,char const*,int,int ,int ,unsigned int) ;int vfs_dirent; int dentry; } ;
typedef int loff_t ;


 scalar_t__ file_removed (int ,char const*) ;
 int stub1 (int ,char const*,int,int ,int ,unsigned int) ;

__attribute__((used)) static int hppfs_filldir(void *d, const char *name, int size,
    loff_t offset, u64 inode, unsigned int type)
{
 struct hppfs_dirent *dirent = d;

 if (file_removed(dirent->dentry, name))
  return 0;

 return (*dirent->filldir)(dirent->vfs_dirent, name, size, offset,
      inode, type);
}
