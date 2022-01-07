
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef scalar_t__ befs_off_t ;
typedef int befs_data_stream ;
struct TYPE_2__ {scalar_t__ block_size; } ;


 TYPE_1__* BEFS_SB (struct super_block*) ;
 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,scalar_t__) ;
 struct buffer_head* befs_read_datastream (struct super_block*,int *,scalar_t__,int *) ;
 int brelse (struct buffer_head*) ;
 int memcpy (void*,int ,scalar_t__) ;

size_t
befs_read_lsymlink(struct super_block * sb, befs_data_stream * ds, void *buff,
     befs_off_t len)
{
 befs_off_t bytes_read = 0;
 u16 plen;
 struct buffer_head *bh = ((void*)0);
 befs_debug(sb, "---> befs_read_lsymlink() length: %Lu", len);

 while (bytes_read < len) {
  bh = befs_read_datastream(sb, ds, bytes_read, ((void*)0));
  if (!bh) {
   befs_error(sb, "BeFS: Error reading datastream block "
       "starting from %Lu", bytes_read);
   befs_debug(sb, "<--- befs_read_lsymlink() ERROR");
   return bytes_read;

  }
  plen = ((bytes_read + BEFS_SB(sb)->block_size) < len) ?
      BEFS_SB(sb)->block_size : len - bytes_read;
  memcpy(buff + bytes_read, bh->b_data, plen);
  brelse(bh);
  bytes_read += plen;
 }

 befs_debug(sb, "<--- befs_read_lsymlink() read %u bytes", bytes_read);
 return bytes_read;
}
