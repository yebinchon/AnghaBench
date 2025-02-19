
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_blocksize; } ;
struct TYPE_2__ {int* val; } ;
struct kstatfs {unsigned long f_blocks; void* f_bfree; void* f_ffree; TYPE_1__ f_fsid; int f_namelen; void* f_files; void* f_bavail; int f_bsize; int f_type; } ;
struct ext2_super_block {scalar_t__ s_uuid; void* s_free_inodes_count; int s_inodes_count; int s_r_blocks_count; void* s_free_blocks_count; int s_blocks_count; int s_first_data_block; } ;
struct ext2_sb_info {unsigned long s_overhead_last; void* s_blocks_last; unsigned long s_groups_count; int s_itb_per_group; struct ext2_super_block* s_es; } ;
struct dentry {struct super_block* d_sb; } ;


 int EXT2_NAME_LEN ;
 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int EXT2_SUPER_MAGIC ;
 int MINIX_DF ;
 void* cpu_to_le32 (void*) ;
 scalar_t__ ext2_bg_has_super (struct super_block*,unsigned long) ;
 scalar_t__ ext2_bg_num_gdb (struct super_block*,unsigned long) ;
 void* ext2_count_free_blocks (struct super_block*) ;
 void* ext2_count_free_inodes (struct super_block*) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpup (void*) ;
 int smp_rmb () ;
 int smp_wmb () ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext2_statfs (struct dentry * dentry, struct kstatfs * buf)
{
 struct super_block *sb = dentry->d_sb;
 struct ext2_sb_info *sbi = EXT2_SB(sb);
 struct ext2_super_block *es = sbi->s_es;
 u64 fsid;

 if (test_opt (sb, MINIX_DF))
  sbi->s_overhead_last = 0;
 else if (sbi->s_blocks_last != le32_to_cpu(es->s_blocks_count)) {
  unsigned long i, overhead = 0;
  smp_rmb();
  overhead = le32_to_cpu(es->s_first_data_block);






  for (i = 0; i < sbi->s_groups_count; i++)
   overhead += ext2_bg_has_super(sb, i) +
    ext2_bg_num_gdb(sb, i);





  overhead += (sbi->s_groups_count *
        (2 + sbi->s_itb_per_group));
  sbi->s_overhead_last = overhead;
  smp_wmb();
  sbi->s_blocks_last = le32_to_cpu(es->s_blocks_count);
 }

 buf->f_type = EXT2_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = le32_to_cpu(es->s_blocks_count) - sbi->s_overhead_last;
 buf->f_bfree = ext2_count_free_blocks(sb);
 es->s_free_blocks_count = cpu_to_le32(buf->f_bfree);
 buf->f_bavail = buf->f_bfree - le32_to_cpu(es->s_r_blocks_count);
 if (buf->f_bfree < le32_to_cpu(es->s_r_blocks_count))
  buf->f_bavail = 0;
 buf->f_files = le32_to_cpu(es->s_inodes_count);
 buf->f_ffree = ext2_count_free_inodes(sb);
 es->s_free_inodes_count = cpu_to_le32(buf->f_ffree);
 buf->f_namelen = EXT2_NAME_LEN;
 fsid = le64_to_cpup((void *)es->s_uuid) ^
        le64_to_cpup((void *)es->s_uuid + sizeof(u64));
 buf->f_fsid.val[0] = fsid & 0xFFFFFFFFUL;
 buf->f_fsid.val[1] = (fsid >> 32) & 0xFFFFFFFFUL;
 return 0;
}
