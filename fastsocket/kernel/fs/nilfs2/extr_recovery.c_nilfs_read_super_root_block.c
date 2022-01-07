
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {unsigned int s_blocksize; } ;
struct nilfs_super_root {int sr_sum; int sr_bytes; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;


 int NILFS_SB (struct super_block*) ;
 int NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT ;
 int NILFS_SEG_FAIL_IO ;
 int brelse (struct buffer_head*) ;
 scalar_t__ calc_crc_cont (int ,struct buffer_head*,scalar_t__*,int,unsigned int,int ,int) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int nilfs_warn_segment_error (int) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;
 scalar_t__ unlikely (int) ;

int nilfs_read_super_root_block(struct super_block *sb, sector_t sr_block,
    struct buffer_head **pbh, int check)
{
 struct buffer_head *bh_sr;
 struct nilfs_super_root *sr;
 u32 crc;
 int ret;

 *pbh = ((void*)0);
 bh_sr = sb_bread(sb, sr_block);
 if (unlikely(!bh_sr)) {
  ret = NILFS_SEG_FAIL_IO;
  goto failed;
 }

 sr = (struct nilfs_super_root *)bh_sr->b_data;
 if (check) {
  unsigned bytes = le16_to_cpu(sr->sr_bytes);

  if (bytes == 0 || bytes > sb->s_blocksize) {
   ret = NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT;
   goto failed_bh;
  }
  if (calc_crc_cont(NILFS_SB(sb), bh_sr, &crc,
      sizeof(sr->sr_sum), bytes, sr_block, 1)) {
   ret = NILFS_SEG_FAIL_IO;
   goto failed_bh;
  }
  if (crc != le32_to_cpu(sr->sr_sum)) {
   ret = NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT;
   goto failed_bh;
  }
 }
 *pbh = bh_sr;
 return 0;

 failed_bh:
 brelse(bh_sr);

 failed:
 return nilfs_warn_segment_error(ret);
}
