
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_dirt; } ;
struct ext2_super_block {int s_wtime; } ;
struct TYPE_2__ {int s_sbh; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int cpu_to_le32 (int ) ;
 int ext2_clear_super_error (struct super_block*) ;
 int get_seconds () ;
 int mark_buffer_dirty (int ) ;

__attribute__((used)) static void ext2_commit_super (struct super_block * sb,
          struct ext2_super_block * es)
{
 ext2_clear_super_error(sb);
 es->s_wtime = cpu_to_le32(get_seconds());
 mark_buffer_dirty(EXT2_SB(sb)->s_sbh);
 sb->s_dirt = 0;
}
