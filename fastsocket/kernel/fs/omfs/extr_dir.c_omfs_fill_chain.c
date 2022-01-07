
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct omfs_inode {scalar_t__ i_type; int i_name; int i_sibling; int i_head; } ;
struct inode {int i_sb; } ;
struct file {int f_pos; TYPE_1__* f_dentry; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int (* filldir_t ) (void*,int ,int ,int ,int ,unsigned char) ;
struct TYPE_2__ {struct inode* d_inode; } ;


 unsigned char DT_DIR ;
 unsigned char DT_REG ;
 scalar_t__ OMFS_DIR ;
 int OMFS_NAMELEN ;
 int OMFS_SB (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int clus_to_blk (int ,int ) ;
 scalar_t__ omfs_is_bad (int ,int *,int ) ;
 struct buffer_head* sb_bread (int ,int ) ;
 int strnlen (int ,int ) ;

__attribute__((used)) static int omfs_fill_chain(struct file *filp, void *dirent, filldir_t filldir,
  u64 fsblock, int hindex)
{
 struct inode *dir = filp->f_dentry->d_inode;
 struct buffer_head *bh;
 struct omfs_inode *oi;
 u64 self;
 int res = 0;
 unsigned char d_type;


 while (fsblock != ~0) {
  bh = sb_bread(dir->i_sb, clus_to_blk(OMFS_SB(dir->i_sb),
    fsblock));
  if (!bh)
   goto out;

  oi = (struct omfs_inode *) bh->b_data;
  if (omfs_is_bad(OMFS_SB(dir->i_sb), &oi->i_head, fsblock)) {
   brelse(bh);
   goto out;
  }

  self = fsblock;
  fsblock = be64_to_cpu(oi->i_sibling);


  if (hindex) {
   hindex--;
   brelse(bh);
   continue;
  }

  d_type = (oi->i_type == OMFS_DIR) ? DT_DIR : DT_REG;

  res = filldir(dirent, oi->i_name, strnlen(oi->i_name,
   OMFS_NAMELEN), filp->f_pos, self, d_type);
  if (res == 0)
   filp->f_pos++;
  brelse(bh);
 }
out:
 return res;
}
