
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct omfs_inode {int i_sibling; int i_name; int i_head; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EIO ;
 int ENOENT ;
 struct buffer_head* ERR_PTR (int) ;
 int OMFS_SB (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int clus_to_blk (int ,int ) ;
 scalar_t__ omfs_is_bad (int ,int *,int ) ;
 struct buffer_head* sb_bread (int ,int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static struct buffer_head *omfs_scan_list(struct inode *dir, u64 block,
    const char *name, int namelen,
    u64 *prev_block)
{
 struct buffer_head *bh;
 struct omfs_inode *oi;
 int err = -ENOENT;
 *prev_block = ~0;

 while (block != ~0) {
  bh = sb_bread(dir->i_sb,
   clus_to_blk(OMFS_SB(dir->i_sb), block));
  if (!bh) {
   err = -EIO;
   goto err;
  }

  oi = (struct omfs_inode *) bh->b_data;
  if (omfs_is_bad(OMFS_SB(dir->i_sb), &oi->i_head, block)) {
   brelse(bh);
   goto err;
  }

  if (strncmp(oi->i_name, name, namelen) == 0)
   return bh;

  *prev_block = block;
  block = be64_to_cpu(oi->i_sibling);
  brelse(bh);
 }
err:
 return ERR_PTR(err);
}
