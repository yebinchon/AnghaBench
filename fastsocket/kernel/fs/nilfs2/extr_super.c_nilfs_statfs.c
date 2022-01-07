
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct the_nilfs {unsigned long long ns_blocks_per_segment; unsigned long long ns_nsegments; unsigned long long ns_first_data_block; unsigned long ns_nrsvsegs; } ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct nilfs_sb_info {int s_inodes_count; struct the_nilfs* s_nilfs; } ;
struct TYPE_4__ {void** val; } ;
struct kstatfs {unsigned long long f_blocks; unsigned long f_bfree; unsigned long f_bavail; TYPE_2__ f_fsid; int f_namelen; scalar_t__ f_ffree; int f_files; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
typedef unsigned long sector_t ;
struct TYPE_3__ {int bd_dev; } ;


 int NILFS_NAME_LEN ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int NILFS_SUPER_MAGIC ;
 int atomic_read (int *) ;
 int huge_encode_dev (int ) ;
 int nilfs_count_free_blocks (struct the_nilfs*,unsigned long*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct the_nilfs *nilfs = sbi->s_nilfs;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);
 unsigned long long blocks;
 unsigned long overhead;
 unsigned long nrsvblocks;
 sector_t nfreeblocks;
 int err;







 blocks = nilfs->ns_blocks_per_segment * nilfs->ns_nsegments
  - nilfs->ns_first_data_block;
 nrsvblocks = nilfs->ns_nrsvsegs * nilfs->ns_blocks_per_segment;







 overhead = 0;

 err = nilfs_count_free_blocks(nilfs, &nfreeblocks);
 if (unlikely(err))
  return err;

 buf->f_type = NILFS_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = blocks - overhead;
 buf->f_bfree = nfreeblocks;
 buf->f_bavail = (buf->f_bfree >= nrsvblocks) ?
  (buf->f_bfree - nrsvblocks) : 0;
 buf->f_files = atomic_read(&sbi->s_inodes_count);
 buf->f_ffree = 0;
 buf->f_namelen = NILFS_NAME_LEN;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 return 0;
}
