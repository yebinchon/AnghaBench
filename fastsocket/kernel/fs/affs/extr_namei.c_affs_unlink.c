
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_4__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_ino; } ;


 int affs_remove_header (struct dentry*) ;
 int pr_debug (char*,int ,int ,int,int ) ;

int
affs_unlink(struct inode *dir, struct dentry *dentry)
{
 pr_debug("AFFS: unlink(dir=%d, %lu \"%.*s\")\n", (u32)dir->i_ino,
   dentry->d_inode->i_ino,
   (int)dentry->d_name.len, dentry->d_name.name);

 return affs_remove_header(dentry);
}
