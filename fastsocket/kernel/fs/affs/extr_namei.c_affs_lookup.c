
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int b_blocknr; struct super_block* i_sb; } ;
struct TYPE_4__ {int name; scalar_t__ len; } ;
struct dentry {int * d_op; void* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {int b_blocknr; struct super_block* i_sb; } ;
struct TYPE_6__ {int s_flags; } ;
struct TYPE_5__ {int original; int stype; } ;


 TYPE_3__* AFFS_SB (struct super_block*) ;
 TYPE_2__* AFFS_TAIL (struct super_block*,struct inode*) ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int SF_INTL ;

 int affs_brelse (struct inode*) ;
 int affs_dentry_operations ;
 struct inode* affs_find_entry (struct inode*,struct dentry*) ;
 struct inode* affs_iget (struct super_block*,int) ;
 int affs_intl_dentry_operations ;
 int affs_lock_dir (struct inode*) ;
 int affs_unlock_dir (struct inode*) ;
 int be32_to_cpu (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int pr_debug (char*,int,int ) ;

struct dentry *
affs_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct super_block *sb = dir->i_sb;
 struct buffer_head *bh;
 struct inode *inode = ((void*)0);

 pr_debug("AFFS: lookup(\"%.*s\")\n",(int)dentry->d_name.len,dentry->d_name.name);

 affs_lock_dir(dir);
 bh = affs_find_entry(dir, dentry);
 affs_unlock_dir(dir);
 if (IS_ERR(bh))
  return ERR_CAST(bh);
 if (bh) {
  u32 ino = bh->b_blocknr;


  dentry->d_fsdata = (void *)(long)ino;
  switch (be32_to_cpu(AFFS_TAIL(sb, bh)->stype)) {


  case 128:
   ino = be32_to_cpu(AFFS_TAIL(sb, bh)->original);
  }
  affs_brelse(bh);
  inode = affs_iget(sb, ino);
  if (IS_ERR(inode))
   return ERR_PTR(PTR_ERR(inode));
 }
 dentry->d_op = AFFS_SB(sb)->s_flags & SF_INTL ? &affs_intl_dentry_operations : &affs_dentry_operations;
 d_add(dentry, inode);
 return ((void*)0);
}
