
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int toupper_t ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int * table; } ;
struct TYPE_5__ {int hash_chain; int name; } ;


 TYPE_3__* AFFS_HEAD (struct buffer_head*) ;
 TYPE_2__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int EIO ;
 struct buffer_head* ERR_PTR (int ) ;
 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_get_toupper (struct super_block*) ;
 size_t affs_hash_name (struct super_block*,int ,scalar_t__) ;
 scalar_t__ affs_match (struct dentry*,int ,int ) ;
 int be32_to_cpu (int ) ;
 int pr_debug (char*,int,int ) ;

__attribute__((used)) static struct buffer_head *
affs_find_entry(struct inode *dir, struct dentry *dentry)
{
 struct super_block *sb = dir->i_sb;
 struct buffer_head *bh;
 toupper_t toupper = affs_get_toupper(sb);
 u32 key;

 pr_debug("AFFS: find_entry(\"%.*s\")\n", (int)dentry->d_name.len, dentry->d_name.name);

 bh = affs_bread(sb, dir->i_ino);
 if (!bh)
  return ERR_PTR(-EIO);

 key = be32_to_cpu(AFFS_HEAD(bh)->table[affs_hash_name(sb, dentry->d_name.name, dentry->d_name.len)]);

 for (;;) {
  affs_brelse(bh);
  if (key == 0)
   return ((void*)0);
  bh = affs_bread(sb, key);
  if (!bh)
   return ERR_PTR(-EIO);
  if (affs_match(dentry, AFFS_TAIL(sb, bh)->name, toupper))
   return bh;
  key = be32_to_cpu(AFFS_TAIL(sb, bh)->hash_chain);
 }
}
