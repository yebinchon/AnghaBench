
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct super_block {int s_blocksize; int s_bdev; } ;
struct ext3_super_block {int s_blocks_count; int s_uuid; int s_feature_incompat; int s_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct block_device {int dummy; } ;
struct TYPE_11__ {TYPE_2__* j_superblock; int j_sb_buffer; struct super_block* j_private; } ;
typedef TYPE_3__ journal_t ;
typedef int ext3_fsblk_t ;
typedef int dev_t ;
struct TYPE_12__ {struct block_device* journal_bdev; TYPE_1__* s_es; } ;
struct TYPE_10__ {int s_nr_users; } ;
struct TYPE_9__ {int s_journal_uuid; } ;


 int EXT3_FEATURE_INCOMPAT_JOURNAL_DEV ;
 int EXT3_MIN_BLOCK_SIZE ;
 TYPE_8__* EXT3_SB (struct super_block*) ;
 scalar_t__ EXT3_SUPER_MAGIC ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int KERN_ERR ;
 int READ ;
 struct buffer_head* __bread (struct block_device*,int,int) ;
 scalar_t__ bd_claim (struct block_device*,struct super_block*) ;
 int bdev_logical_block_size (struct block_device*) ;
 int be32_to_cpu (int ) ;
 int blkdev_put (struct block_device*,int) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (int ) ;
 struct block_device* ext3_blkdev_get (int ,struct super_block*) ;
 int ext3_blkdev_put (struct block_device*) ;
 int ext3_init_journal_params (struct super_block*,TYPE_3__*) ;
 int ext3_msg (struct super_block*,int ,char*,...) ;
 int journal_destroy (TYPE_3__*) ;
 TYPE_3__* journal_init_dev (struct block_device*,int ,int,int,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int ll_rw_block (int ,int,int *) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int set_blocksize (struct block_device*,int) ;
 int wait_on_buffer (int ) ;

__attribute__((used)) static journal_t *ext3_get_dev_journal(struct super_block *sb,
           dev_t j_dev)
{
 struct buffer_head * bh;
 journal_t *journal;
 ext3_fsblk_t start;
 ext3_fsblk_t len;
 int hblock, blocksize;
 ext3_fsblk_t sb_block;
 unsigned long offset;
 struct ext3_super_block * es;
 struct block_device *bdev;

 bdev = ext3_blkdev_get(j_dev, sb);
 if (bdev == ((void*)0))
  return ((void*)0);

 if (bd_claim(bdev, sb)) {
  ext3_msg(sb, KERN_ERR,
   "error: failed to claim external journal device");
  blkdev_put(bdev, FMODE_READ|FMODE_WRITE);
  return ((void*)0);
 }

 blocksize = sb->s_blocksize;
 hblock = bdev_logical_block_size(bdev);
 if (blocksize < hblock) {
  ext3_msg(sb, KERN_ERR,
   "error: blocksize too small for journal device");
  goto out_bdev;
 }

 sb_block = EXT3_MIN_BLOCK_SIZE / blocksize;
 offset = EXT3_MIN_BLOCK_SIZE % blocksize;
 set_blocksize(bdev, blocksize);
 if (!(bh = __bread(bdev, sb_block, blocksize))) {
  ext3_msg(sb, KERN_ERR, "error: couldn't read superblock of "
   "external journal");
  goto out_bdev;
 }

 es = (struct ext3_super_block *) (((char *)bh->b_data) + offset);
 if ((le16_to_cpu(es->s_magic) != EXT3_SUPER_MAGIC) ||
     !(le32_to_cpu(es->s_feature_incompat) &
       EXT3_FEATURE_INCOMPAT_JOURNAL_DEV)) {
  ext3_msg(sb, KERN_ERR, "error: external journal has "
   "bad superblock");
  brelse(bh);
  goto out_bdev;
 }

 if (memcmp(EXT3_SB(sb)->s_es->s_journal_uuid, es->s_uuid, 16)) {
  ext3_msg(sb, KERN_ERR, "error: journal UUID does not match");
  brelse(bh);
  goto out_bdev;
 }

 len = le32_to_cpu(es->s_blocks_count);
 start = sb_block + 1;
 brelse(bh);

 journal = journal_init_dev(bdev, sb->s_bdev,
     start, len, blocksize);
 if (!journal) {
  ext3_msg(sb, KERN_ERR,
   "error: failed to create device journal");
  goto out_bdev;
 }
 journal->j_private = sb;
 ll_rw_block(READ, 1, &journal->j_sb_buffer);
 wait_on_buffer(journal->j_sb_buffer);
 if (!buffer_uptodate(journal->j_sb_buffer)) {
  ext3_msg(sb, KERN_ERR, "I/O error on journal device");
  goto out_journal;
 }
 if (be32_to_cpu(journal->j_superblock->s_nr_users) != 1) {
  ext3_msg(sb, KERN_ERR,
   "error: external journal has more than one "
   "user (unsupported) - %d",
   be32_to_cpu(journal->j_superblock->s_nr_users));
  goto out_journal;
 }
 EXT3_SB(sb)->journal_bdev = bdev;
 ext3_init_journal_params(sb, journal);
 return journal;
out_journal:
 journal_destroy(journal);
out_bdev:
 ext3_blkdev_put(bdev);
 return ((void*)0);
}
