
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct super_block {int s_bdev; int s_blocksize; } ;
struct reiserfs_journal_header {int j_mount_id; int j_last_flush_trans_id; int j_first_unflushed_offset; } ;
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal {unsigned long j_start; int j_trans_id; int j_last_flush_trans_id; int j_mount_id; int j_first_unflushed_offset; int j_dev_bd; TYPE_1__* j_header_bh; } ;
struct buffer_head {unsigned long b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int BDEVNAME_SIZE ;
 int REISERFS_DEBUG_CODE ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 unsigned long SB_ONDISK_JOURNAL_1st_BLOCK (struct super_block*) ;
 unsigned long SB_ONDISK_JOURNAL_SIZE (struct super_block*) ;
 scalar_t__ _update_journal_header_block (struct super_block*,int,int) ;
 scalar_t__ bdev_read_only (int ) ;
 int bdevname (int ,char*) ;
 int brelse (struct buffer_head*) ;
 unsigned long get_desc_mount_id (struct reiserfs_journal_desc*) ;
 unsigned int get_desc_trans_id (struct reiserfs_journal_desc*) ;
 scalar_t__ get_desc_trans_len (struct reiserfs_journal_desc*) ;
 scalar_t__ get_seconds () ;
 void* journal_bread (struct super_block*,int) ;
 int journal_read_transaction (struct super_block*,unsigned long,unsigned long,unsigned int,unsigned long) ;
 int journal_transaction_is_valid (struct super_block*,struct buffer_head*,unsigned int*,unsigned long*) ;
 int le32_to_cpu (int ) ;
 struct buffer_head* reiserfs_breada (int ,unsigned long,int ,unsigned long) ;
 int reiserfs_debug (struct super_block*,int ,char*,...) ;
 int reiserfs_info (struct super_block*,char*,int,...) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;

__attribute__((used)) static int journal_read(struct super_block *sb)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 struct reiserfs_journal_desc *desc;
 unsigned int oldest_trans_id = 0;
 unsigned int oldest_invalid_trans_id = 0;
 time_t start;
 unsigned long oldest_start = 0;
 unsigned long cur_dblock = 0;
 unsigned long newest_mount_id = 9;
 struct buffer_head *d_bh;
 struct reiserfs_journal_header *jh;
 int valid_journal_header = 0;
 int replay_count = 0;
 int continue_replay = 1;
 int ret;
 char b[BDEVNAME_SIZE];

 cur_dblock = SB_ONDISK_JOURNAL_1st_BLOCK(sb);
 reiserfs_info(sb, "checking transaction log (%s)\n",
        bdevname(journal->j_dev_bd, b));
 start = get_seconds();





 journal->j_header_bh = journal_bread(sb,
          SB_ONDISK_JOURNAL_1st_BLOCK(sb)
          + SB_ONDISK_JOURNAL_SIZE(sb));
 if (!journal->j_header_bh) {
  return 1;
 }
 jh = (struct reiserfs_journal_header *)(journal->j_header_bh->b_data);
 if (le32_to_cpu(jh->j_first_unflushed_offset) <
     SB_ONDISK_JOURNAL_SIZE(sb)
     && le32_to_cpu(jh->j_last_flush_trans_id) > 0) {
  oldest_start =
      SB_ONDISK_JOURNAL_1st_BLOCK(sb) +
      le32_to_cpu(jh->j_first_unflushed_offset);
  oldest_trans_id = le32_to_cpu(jh->j_last_flush_trans_id) + 1;
  newest_mount_id = le32_to_cpu(jh->j_mount_id);
  reiserfs_debug(sb, REISERFS_DEBUG_CODE,
          "journal-1153: found in "
          "header: first_unflushed_offset %d, last_flushed_trans_id "
          "%lu", le32_to_cpu(jh->j_first_unflushed_offset),
          le32_to_cpu(jh->j_last_flush_trans_id));
  valid_journal_header = 1;





  d_bh =
      journal_bread(sb,
      SB_ONDISK_JOURNAL_1st_BLOCK(sb) +
      le32_to_cpu(jh->j_first_unflushed_offset));
  ret = journal_transaction_is_valid(sb, d_bh, ((void*)0), ((void*)0));
  if (!ret) {
   continue_replay = 0;
  }
  brelse(d_bh);
  goto start_log_replay;
 }

 if (continue_replay && bdev_read_only(sb->s_bdev)) {
  reiserfs_warning(sb, "clm-2076",
     "device is readonly, unable to replay log");
  return -1;
 }




 while (continue_replay
        && cur_dblock <
        (SB_ONDISK_JOURNAL_1st_BLOCK(sb) +
  SB_ONDISK_JOURNAL_SIZE(sb))) {


  d_bh =
      reiserfs_breada(journal->j_dev_bd, cur_dblock,
        sb->s_blocksize,
        SB_ONDISK_JOURNAL_1st_BLOCK(sb) +
        SB_ONDISK_JOURNAL_SIZE(sb));
  ret =
      journal_transaction_is_valid(sb, d_bh,
       &oldest_invalid_trans_id,
       &newest_mount_id);
  if (ret == 1) {
   desc = (struct reiserfs_journal_desc *)d_bh->b_data;
   if (oldest_start == 0) {
    oldest_trans_id = get_desc_trans_id(desc);
    oldest_start = d_bh->b_blocknr;
    newest_mount_id = get_desc_mount_id(desc);
    reiserfs_debug(sb, REISERFS_DEBUG_CODE,
            "journal-1179: Setting "
            "oldest_start to offset %llu, trans_id %lu",
            oldest_start -
            SB_ONDISK_JOURNAL_1st_BLOCK
            (sb), oldest_trans_id);
   } else if (oldest_trans_id > get_desc_trans_id(desc)) {

    oldest_trans_id = get_desc_trans_id(desc);
    oldest_start = d_bh->b_blocknr;
    reiserfs_debug(sb, REISERFS_DEBUG_CODE,
            "journal-1180: Resetting "
            "oldest_start to offset %lu, trans_id %lu",
            oldest_start -
            SB_ONDISK_JOURNAL_1st_BLOCK
            (sb), oldest_trans_id);
   }
   if (newest_mount_id < get_desc_mount_id(desc)) {
    newest_mount_id = get_desc_mount_id(desc);
    reiserfs_debug(sb, REISERFS_DEBUG_CODE,
            "journal-1299: Setting "
            "newest_mount_id to %d",
            get_desc_mount_id(desc));
   }
   cur_dblock += get_desc_trans_len(desc) + 2;
  } else {
   cur_dblock++;
  }
  brelse(d_bh);
 }

      start_log_replay:
 cur_dblock = oldest_start;
 if (oldest_trans_id) {
  reiserfs_debug(sb, REISERFS_DEBUG_CODE,
          "journal-1206: Starting replay "
          "from offset %llu, trans_id %lu",
          cur_dblock - SB_ONDISK_JOURNAL_1st_BLOCK(sb),
          oldest_trans_id);

 }
 replay_count = 0;
 while (continue_replay && oldest_trans_id > 0) {
  ret =
      journal_read_transaction(sb, cur_dblock, oldest_start,
          oldest_trans_id, newest_mount_id);
  if (ret < 0) {
   return ret;
  } else if (ret != 0) {
   break;
  }
  cur_dblock =
      SB_ONDISK_JOURNAL_1st_BLOCK(sb) + journal->j_start;
  replay_count++;
  if (cur_dblock == oldest_start)
   break;
 }

 if (oldest_trans_id == 0) {
  reiserfs_debug(sb, REISERFS_DEBUG_CODE,
          "journal-1225: No valid " "transactions found");
 }




 if (valid_journal_header && replay_count == 0) {
  journal->j_start = le32_to_cpu(jh->j_first_unflushed_offset);
  journal->j_trans_id =
      le32_to_cpu(jh->j_last_flush_trans_id) + 1;

  if (journal->j_trans_id == 0)
   journal->j_trans_id = 10;
  journal->j_last_flush_trans_id =
      le32_to_cpu(jh->j_last_flush_trans_id);
  journal->j_mount_id = le32_to_cpu(jh->j_mount_id) + 1;
 } else {
  journal->j_mount_id = newest_mount_id + 1;
 }
 reiserfs_debug(sb, REISERFS_DEBUG_CODE, "journal-1299: Setting "
         "newest_mount_id to %lu", journal->j_mount_id);
 journal->j_first_unflushed_offset = journal->j_start;
 if (replay_count > 0) {
  reiserfs_info(sb,
         "replayed %d transactions in %lu seconds\n",
         replay_count, get_seconds() - start);
 }
 if (!bdev_read_only(sb->s_bdev) &&
     _update_journal_header_block(sb, journal->j_start,
      journal->j_last_flush_trans_id)) {



  return -1;
 }
 return 0;
}
