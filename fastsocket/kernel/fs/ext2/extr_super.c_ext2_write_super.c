
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; scalar_t__ s_dirt; } ;


 int MS_RDONLY ;
 int ext2_sync_fs (struct super_block*,int) ;

void ext2_write_super(struct super_block *sb)
{
 if (!(sb->s_flags & MS_RDONLY))
  ext2_sync_fs(sb, 1);
 else
  sb->s_dirt = 0;
}
