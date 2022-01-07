
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int befs_blocknr_t ;


 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

struct buffer_head *
befs_bread(struct super_block *sb, befs_blocknr_t block)
{
 struct buffer_head *bh = ((void*)0);

 befs_debug(sb, "---> Enter befs_read() %Lu", block);

 bh = sb_bread(sb, block);

 if (bh == ((void*)0)) {
  befs_error(sb, "Failed to read block %lu", block);
  goto error;
 }

 befs_debug(sb, "<--- befs_read()");

 return bh;

      error:
 befs_debug(sb, "<--- befs_read() ERROR");
 return ((void*)0);
}
