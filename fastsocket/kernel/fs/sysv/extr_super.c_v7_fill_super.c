
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7_super_block {int s_time; int s_ninode; int s_nfree; } ;
struct sysv_sb_info {struct buffer_head* s_bh2; struct buffer_head* s_bh1; int s_bytesex; int s_type; scalar_t__ s_block_base; struct super_block* s_sb; } ;
struct sysv_inode {int i_size; int i_mode; } ;
struct super_block {int s_id; struct sysv_sb_info* s_fs_info; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BYTESEX_PDP ;
 int EINVAL ;
 int ENOMEM ;
 int FSTYPE_V7 ;
 int GFP_KERNEL ;
 int S_IFDIR ;
 int V7_NICFREE ;
 int V7_NICINOD ;
 int brelse (struct buffer_head*) ;
 scalar_t__ complete_read_super (struct super_block*,int,int) ;
 int fs16_to_cpu (struct sysv_sb_info*,int ) ;
 int fs32_to_cpu (struct sysv_sb_info*,int ) ;
 int kfree (struct sysv_sb_info*) ;
 struct sysv_sb_info* kzalloc (int,int ) ;
 int panic (char*) ;
 int printk (char*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int sb_set_blocksize (struct super_block*,int) ;

__attribute__((used)) static int v7_fill_super(struct super_block *sb, void *data, int silent)
{
 struct sysv_sb_info *sbi;
 struct buffer_head *bh, *bh2 = ((void*)0);
 struct v7_super_block *v7sb;
 struct sysv_inode *v7i;

 if (440 != sizeof (struct v7_super_block))
  panic("V7 FS: bad super-block size");
 if (64 != sizeof (struct sysv_inode))
  panic("sysv fs: bad i-node size");

 sbi = kzalloc(sizeof(struct sysv_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;

 sbi->s_sb = sb;
 sbi->s_block_base = 0;
 sbi->s_type = FSTYPE_V7;
 sbi->s_bytesex = BYTESEX_PDP;
 sb->s_fs_info = sbi;

 sb_set_blocksize(sb, 512);

 if ((bh = sb_bread(sb, 1)) == ((void*)0)) {
  if (!silent)
   printk("VFS: unable to read V7 FS superblock on "
          "device %s.\n", sb->s_id);
  goto failed;
 }


 v7sb = (struct v7_super_block *) bh->b_data;
 if (fs16_to_cpu(sbi, v7sb->s_nfree) > V7_NICFREE ||
     fs16_to_cpu(sbi, v7sb->s_ninode) > V7_NICINOD ||
     fs32_to_cpu(sbi, v7sb->s_time) == 0)
  goto failed;



 if ((bh2 = sb_bread(sb, 2)) == ((void*)0))
  goto failed;
 v7i = (struct sysv_inode *)(bh2->b_data + 64);
 if ((fs16_to_cpu(sbi, v7i->i_mode) & ~0777) != S_IFDIR ||
     (fs32_to_cpu(sbi, v7i->i_size) == 0) ||
     (fs32_to_cpu(sbi, v7i->i_size) & 017) != 0)
  goto failed;
 brelse(bh2);
 bh2 = ((void*)0);

 sbi->s_bh1 = bh;
 sbi->s_bh2 = bh;
 if (complete_read_super(sb, silent, 1))
  return 0;

failed:
 brelse(bh2);
 brelse(bh);
 kfree(sbi);
 return -EINVAL;
}
