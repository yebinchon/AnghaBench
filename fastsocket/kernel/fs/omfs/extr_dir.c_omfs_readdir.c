
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_size; int i_ino; int i_sb; } ;
struct file {int f_pos; TYPE_1__* f_dentry; } ;
struct buffer_head {int * b_data; } ;
typedef int loff_t ;
typedef int (* filldir_t ) (void*,char*,int,int,int ,int ) ;
typedef int __be64 ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int DT_DIR ;
 int EINVAL ;
 int OMFS_DIR_START ;
 int OMFS_SB (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int clus_to_blk (int ,int ) ;
 int omfs_fill_chain (struct file*,void*,int (*) (void*,char*,int,int,int ,int ),int ,unsigned int) ;
 int parent_ino (TYPE_1__*) ;
 struct buffer_head* sb_bread (int ,int ) ;

__attribute__((used)) static int omfs_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *dir = filp->f_dentry->d_inode;
 struct buffer_head *bh;
 loff_t offset, res;
 unsigned int hchain, hindex;
 int nbuckets;
 u64 fsblock;
 int ret = -EINVAL;

 if (filp->f_pos >> 32)
  goto success;

 switch ((unsigned long) filp->f_pos) {
 case 0:
  if (filldir(dirent, ".", 1, 0, dir->i_ino, DT_DIR) < 0)
   goto success;
  filp->f_pos++;

 case 1:
  if (filldir(dirent, "..", 2, 1,
      parent_ino(filp->f_dentry), DT_DIR) < 0)
   goto success;
  filp->f_pos = 1 << 20;

 }

 nbuckets = (dir->i_size - OMFS_DIR_START) / 8;


 hchain = (filp->f_pos >> 20) - 1;
 hindex = filp->f_pos & 0xfffff;

 bh = sb_bread(dir->i_sb, clus_to_blk(OMFS_SB(dir->i_sb), dir->i_ino));
 if (!bh)
  goto out;

 offset = OMFS_DIR_START + hchain * 8;

 for (; hchain < nbuckets; hchain++, offset += 8) {
  fsblock = be64_to_cpu(*((__be64 *) &bh->b_data[offset]));

  res = omfs_fill_chain(filp, dirent, filldir, fsblock, hindex);
  hindex = 0;
  if (res < 0)
   break;

  filp->f_pos = (hchain+2) << 20;
 }
 brelse(bh);
success:
 ret = 0;
out:
 return ret;
}
