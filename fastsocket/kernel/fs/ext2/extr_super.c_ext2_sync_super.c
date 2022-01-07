
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_dirt; } ;
struct ext2_super_block {void* s_wtime; void* s_free_inodes_count; void* s_free_blocks_count; } ;
struct TYPE_2__ {int s_sbh; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 void* cpu_to_le32 (int ) ;
 int ext2_clear_super_error (struct super_block*) ;
 int ext2_count_free_blocks (struct super_block*) ;
 int ext2_count_free_inodes (struct super_block*) ;
 int get_seconds () ;
 int mark_buffer_dirty (int ) ;
 int sync_dirty_buffer (int ) ;

__attribute__((used)) static void ext2_sync_super(struct super_block *sb, struct ext2_super_block *es)
{
 ext2_clear_super_error(sb);
 es->s_free_blocks_count = cpu_to_le32(ext2_count_free_blocks(sb));
 es->s_free_inodes_count = cpu_to_le32(ext2_count_free_inodes(sb));
 es->s_wtime = cpu_to_le32(get_seconds());
 mark_buffer_dirty(EXT2_SB(sb)->s_sbh);
 sync_dirty_buffer(EXT2_SB(sb)->s_sbh);
 sb->s_dirt = 0;
}
