
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {int len; int start; int allocation_group; } ;
typedef TYPE_1__ befs_disk_block_run ;
struct TYPE_10__ {int len; int start; int allocation_group; } ;
struct TYPE_9__ {scalar_t__ max_direct_range; TYPE_3__ indirect; } ;
typedef TYPE_2__ befs_data_stream ;
typedef scalar_t__ befs_blocknr_t ;
typedef TYPE_3__ befs_block_run ;
struct TYPE_11__ {scalar_t__ block_shift; } ;


 int BEFS_ERR ;
 int BEFS_OK ;
 TYPE_7__* BEFS_SB (struct super_block*) ;
 struct buffer_head* befs_bread (struct super_block*,scalar_t__) ;
 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,scalar_t__) ;
 int befs_iaddrs_per_block (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int fs16_to_cpu (struct super_block*,int ) ;
 int fs32_to_cpu (struct super_block*,int ) ;
 scalar_t__ iaddr2blockno (struct super_block*,TYPE_3__*) ;

__attribute__((used)) static int
befs_find_brun_indirect(struct super_block *sb,
   befs_data_stream * data, befs_blocknr_t blockno,
   befs_block_run * run)
{
 int i, j;
 befs_blocknr_t sum = 0;
 befs_blocknr_t indir_start_blk;
 befs_blocknr_t search_blk;
 struct buffer_head *indirblock;
 befs_disk_block_run *array;

 befs_block_run indirect = data->indirect;
 befs_blocknr_t indirblockno = iaddr2blockno(sb, &indirect);
 int arraylen = befs_iaddrs_per_block(sb);

 befs_debug(sb, "---> befs_find_brun_indirect(), find %lu", blockno);

 indir_start_blk = data->max_direct_range >> BEFS_SB(sb)->block_shift;
 search_blk = blockno - indir_start_blk;


 for (i = 0; i < indirect.len; i++) {
  indirblock = befs_bread(sb, indirblockno + i);
  if (indirblock == ((void*)0)) {
   befs_debug(sb,
       "---> befs_find_brun_indirect() failed to "
       "read disk block %lu from the indirect brun",
       indirblockno + i);
   return BEFS_ERR;
  }

  array = (befs_disk_block_run *) indirblock->b_data;

  for (j = 0; j < arraylen; ++j) {
   int len = fs16_to_cpu(sb, array[j].len);

   if (search_blk >= sum && search_blk < sum + len) {
    int offset = search_blk - sum;
    run->allocation_group =
        fs32_to_cpu(sb, array[j].allocation_group);
    run->start =
        fs16_to_cpu(sb, array[j].start) + offset;
    run->len =
        fs16_to_cpu(sb, array[j].len) - offset;

    brelse(indirblock);
    befs_debug(sb,
        "<--- befs_find_brun_indirect() found "
        "file block %lu at indirect[%d]",
        blockno, j + (i * arraylen));
    return BEFS_OK;
   }
   sum += len;
  }

  brelse(indirblock);
 }


 befs_error(sb, "BeFS: befs_find_brun_indirect() failed to find "
     "file block %lu", blockno);

 befs_debug(sb, "<--- befs_find_brun_indirect() ERROR");
 return BEFS_ERR;
}
