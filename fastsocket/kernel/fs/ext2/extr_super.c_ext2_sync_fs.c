
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_dirt; } ;
struct ext2_super_block {int s_state; void* s_mtime; void* s_free_inodes_count; void* s_free_blocks_count; } ;
struct TYPE_2__ {struct ext2_super_block* s_es; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int EXT2_VALID_FS ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int ext2_clear_super_error (struct super_block*) ;
 int ext2_commit_super (struct super_block*,struct ext2_super_block*) ;
 int ext2_count_free_blocks (struct super_block*) ;
 int ext2_count_free_inodes (struct super_block*) ;
 int ext2_debug (char*) ;
 int ext2_sync_super (struct super_block*,struct ext2_super_block*) ;
 int get_seconds () ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int ext2_sync_fs(struct super_block *sb, int wait)
{
 struct ext2_super_block *es = EXT2_SB(sb)->s_es;

 lock_kernel();
 ext2_clear_super_error(sb);

 if (es->s_state & cpu_to_le16(EXT2_VALID_FS)) {
  ext2_debug("setting valid to 0\n");
  es->s_state &= cpu_to_le16(~EXT2_VALID_FS);
  es->s_free_blocks_count =
   cpu_to_le32(ext2_count_free_blocks(sb));
  es->s_free_inodes_count =
   cpu_to_le32(ext2_count_free_inodes(sb));
  es->s_mtime = cpu_to_le32(get_seconds());
  ext2_sync_super(sb, es);
 } else {
  ext2_commit_super(sb, es);
 }
 sb->s_dirt = 0;
 unlock_kernel();

 return 0;
}
