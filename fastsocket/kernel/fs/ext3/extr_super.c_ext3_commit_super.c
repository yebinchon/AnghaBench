
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct ext3_super_block {void* s_free_inodes_count; void* s_free_blocks_count; void* s_wtime; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct buffer_head* s_sbh; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int KERN_ERR ;
 int MS_RDONLY ;
 scalar_t__ buffer_write_io_error (struct buffer_head*) ;
 int clear_buffer_write_io_error (struct buffer_head*) ;
 void* cpu_to_le32 (int ) ;
 int ext3_count_free_blocks (struct super_block*) ;
 int ext3_count_free_inodes (struct super_block*) ;
 int ext3_msg (struct super_block*,int ,char*) ;
 int get_seconds () ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext3_commit_super(struct super_block *sb,
          struct ext3_super_block *es,
          int sync)
{
 struct buffer_head *sbh = EXT3_SB(sb)->s_sbh;
 int error = 0;

 if (!sbh)
  return error;

 if (buffer_write_io_error(sbh)) {
  ext3_msg(sb, KERN_ERR, "previous I/O error to "
         "superblock detected");
  clear_buffer_write_io_error(sbh);
  set_buffer_uptodate(sbh);
 }
 if (!(sb->s_flags & MS_RDONLY))
  es->s_wtime = cpu_to_le32(get_seconds());
 es->s_free_blocks_count = cpu_to_le32(ext3_count_free_blocks(sb));
 es->s_free_inodes_count = cpu_to_le32(ext3_count_free_inodes(sb));
 BUFFER_TRACE(sbh, "marking dirty");
 mark_buffer_dirty(sbh);
 if (sync) {
  error = sync_dirty_buffer(sbh);
  if (buffer_write_io_error(sbh)) {
   ext3_msg(sb, KERN_ERR, "I/O error while writing "
          "superblock");
   clear_buffer_write_io_error(sbh);
   set_buffer_uptodate(sbh);
  }
 }
 return error;
}
