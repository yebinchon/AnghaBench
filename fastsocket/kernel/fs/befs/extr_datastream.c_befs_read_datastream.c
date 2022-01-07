
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int befs_off_t ;
typedef int befs_data_stream ;
typedef int befs_blocknr_t ;
typedef int befs_block_run ;
struct TYPE_2__ {int block_shift; } ;


 scalar_t__ BEFS_OK ;
 TYPE_1__* BEFS_SB (struct super_block*) ;
 struct buffer_head* befs_bread_iaddr (struct super_block*,int ) ;
 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,int) ;
 scalar_t__ befs_fblock2brun (struct super_block*,int *,int,int *) ;

struct buffer_head *
befs_read_datastream(struct super_block *sb, befs_data_stream * ds,
       befs_off_t pos, uint * off)
{
 struct buffer_head *bh = ((void*)0);
 befs_block_run run;
 befs_blocknr_t block;

 befs_debug(sb, "---> befs_read_datastream() %Lu", pos);
 block = pos >> BEFS_SB(sb)->block_shift;
 if (off)
  *off = pos - (block << BEFS_SB(sb)->block_shift);

 if (befs_fblock2brun(sb, ds, block, &run) != BEFS_OK) {
  befs_error(sb, "BeFS: Error finding disk addr of block %lu",
      block);
  befs_debug(sb, "<--- befs_read_datastream() ERROR");
  return ((void*)0);
 }
 bh = befs_bread_iaddr(sb, run);
 if (!bh) {
  befs_error(sb, "BeFS: Error reading block %lu from datastream",
      block);
  return ((void*)0);
 }

 befs_debug(sb, "<--- befs_read_datastream() read data, starting at %Lu",
     pos);

 return bh;
}
