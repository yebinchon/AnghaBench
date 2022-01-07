
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ,int ,char const*) ;
 int S_IFLNK ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int ,char const*) ;

__attribute__((used)) static int
v9fs_vfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 P9_DPRINTK(P9_DEBUG_VFS, " %lu,%s,%s\n", dir->i_ino,
     dentry->d_name.name, symname);

 return v9fs_vfs_mkspecial(dir, dentry, S_IFLNK, symname);
}
