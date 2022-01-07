
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_self; } ;
struct omfs_inode {TYPE_1__ i_head; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct buffer_head {int i_sb; scalar_t__ b_data; } ;
typedef int ino_t ;


 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ OMFS_NAMELEN ;
 int be64_to_cpu (int ) ;
 int brelse (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct inode* omfs_find_entry (struct inode*,int ,scalar_t__) ;
 struct inode* omfs_iget (int ,int ) ;

__attribute__((used)) static struct dentry *omfs_lookup(struct inode *dir, struct dentry *dentry,
      struct nameidata *nd)
{
 struct buffer_head *bh;
 struct inode *inode = ((void*)0);

 if (dentry->d_name.len > OMFS_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);

 bh = omfs_find_entry(dir, dentry->d_name.name, dentry->d_name.len);
 if (!IS_ERR(bh)) {
  struct omfs_inode *oi = (struct omfs_inode *)bh->b_data;
  ino_t ino = be64_to_cpu(oi->i_head.h_self);
  brelse(bh);
  inode = omfs_iget(dir->i_sb, ino);
  if (IS_ERR(inode))
   return ERR_CAST(inode);
 }
 d_add(dentry, inode);
 return ((void*)0);
}
