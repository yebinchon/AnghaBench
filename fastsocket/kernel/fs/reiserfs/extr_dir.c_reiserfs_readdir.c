
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef int filldir_t ;


 int reiserfs_readdir_dentry (struct dentry*,void*,int ,int *) ;

__attribute__((used)) static int reiserfs_readdir(struct file *file, void *dirent, filldir_t filldir)
{
 struct dentry *dentry = file->f_path.dentry;
 return reiserfs_readdir_dentry(dentry, dirent, filldir, &file->f_pos);
}
