
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sysv_zone_t ;
struct sysv_sb_info {scalar_t__* s_bcache; unsigned int s_firstdatazone; unsigned int s_nzones; unsigned int s_flc_size; int s_free_blocks; void** s_bcache_count; scalar_t__ s_block_base; } ;
struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef void* __fs16 ;


 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_fs16 (struct sysv_sb_info*,unsigned int) ;
 int dirty_sb (struct super_block*) ;
 unsigned int fs16_to_cpu (struct sysv_sb_info*,void*) ;
 int fs32_add (struct sysv_sb_info*,int ,int) ;
 unsigned int fs32_to_cpu (struct sysv_sb_info*,scalar_t__) ;
 int get_chunk (struct super_block*,struct buffer_head*) ;
 int lock_super (struct super_block*) ;
 int memcpy (scalar_t__*,int ,unsigned int) ;
 int printk (char*,...) ;
 struct buffer_head* sb_bread (struct super_block*,unsigned int) ;
 int unlock_super (struct super_block*) ;

sysv_zone_t sysv_new_block(struct super_block * sb)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 unsigned int block;
 sysv_zone_t nr;
 struct buffer_head * bh;
 unsigned count;

 lock_super(sb);
 count = fs16_to_cpu(sbi, *sbi->s_bcache_count);

 if (count == 0)
  goto Enospc;
 nr = sbi->s_bcache[--count];
 if (nr == 0)
  goto Enospc;

 block = fs32_to_cpu(sbi, nr);

 *sbi->s_bcache_count = cpu_to_fs16(sbi, count);

 if (block < sbi->s_firstdatazone || block >= sbi->s_nzones) {
  printk("sysv_new_block: new block %d is not in data zone\n",
   block);
  goto Enospc;
 }

 if (count == 0) {
  unsigned count;

  block += sbi->s_block_base;
  if (!(bh = sb_bread(sb, block))) {
   printk("sysv_new_block: cannot read free-list block\n");

   *sbi->s_bcache_count = cpu_to_fs16(sbi, 1);
   goto Enospc;
  }
  count = fs16_to_cpu(sbi, *(__fs16*)bh->b_data);
  if (count > sbi->s_flc_size) {
   printk("sysv_new_block: free-list block with >flc_size entries\n");
   brelse(bh);
   goto Enospc;
  }
  *sbi->s_bcache_count = cpu_to_fs16(sbi, count);
  memcpy(sbi->s_bcache, get_chunk(sb, bh),
    count * sizeof(sysv_zone_t));
  brelse(bh);
 }

 fs32_add(sbi, sbi->s_free_blocks, -1);
 dirty_sb(sb);
 unlock_super(sb);
 return nr;

Enospc:
 unlock_super(sb);
 return 0;
}
