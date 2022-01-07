
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct omfs_inode {int i_sibling; } ;
struct inode {int i_sb; int * b_data; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {int i_sb; int * b_data; } ;
typedef int __be64 ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int OMFS_SB (int ) ;
 int PTR_ERR (struct inode*) ;
 int be64_to_cpu (int ) ;
 int brelse (struct inode*) ;
 int clus_to_blk (int ,int ) ;
 int iput (struct inode*) ;
 int mark_buffer_dirty (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* omfs_get_bucket (struct inode*,char const*,int,int*) ;
 struct inode* omfs_iget (int ,int ) ;
 struct inode* omfs_scan_list (struct inode*,int ,char const*,int,int *) ;
 struct inode* sb_bread (int ,int ) ;

__attribute__((used)) static int omfs_delete_entry(struct dentry *dentry)
{
 struct inode *dir = dentry->d_parent->d_inode;
 struct inode *dirty;
 const char *name = dentry->d_name.name;
 int namelen = dentry->d_name.len;
 struct omfs_inode *oi;
 struct buffer_head *bh, *bh2;
 __be64 *entry, next;
 u64 block, prev;
 int ofs;
 int err = -ENOMEM;


 bh = omfs_get_bucket(dir, name, namelen, &ofs);
 if (!bh)
  goto out;

 entry = (__be64 *) &bh->b_data[ofs];
 block = be64_to_cpu(*entry);

 bh2 = omfs_scan_list(dir, block, name, namelen, &prev);
 if (IS_ERR(bh2)) {
  err = PTR_ERR(bh2);
  goto out_free_bh;
 }

 oi = (struct omfs_inode *) bh2->b_data;
 next = oi->i_sibling;
 brelse(bh2);

 if (prev != ~0) {

  brelse(bh);
  bh = sb_bread(dir->i_sb,
   clus_to_blk(OMFS_SB(dir->i_sb), prev));
  if (!bh)
   goto out;

  oi = (struct omfs_inode *) bh->b_data;
  entry = &oi->i_sibling;
 }

 *entry = next;
 mark_buffer_dirty(bh);

 if (prev != ~0) {
  dirty = omfs_iget(dir->i_sb, prev);
  if (!IS_ERR(dirty)) {
   mark_inode_dirty(dirty);
   iput(dirty);
  }
 }

 err = 0;
out_free_bh:
 brelse(bh);
out:
 return err;
}
