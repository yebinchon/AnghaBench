
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;


 int ST_LINKFILE ;
 int affs_add_entry (struct inode*,struct inode*,struct dentry*,int ) ;
 int pr_debug (char*,int ,int ,int,int ) ;

int
affs_link(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;

 pr_debug("AFFS: link(%u, %u, \"%.*s\")\n", (u32)inode->i_ino, (u32)dir->i_ino,
   (int)dentry->d_name.len,dentry->d_name.name);

 return affs_add_entry(dir, inode, dentry, ST_LINKFILE);
}
