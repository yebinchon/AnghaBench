
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_dirt; } ;
struct TYPE_2__ {int flags; } ;


 int HFS_FLG_BITMAP_DIRTY ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void hfs_bitmap_dirty(struct super_block *sb)
{
 set_bit(HFS_FLG_BITMAP_DIRTY, &HFS_SB(sb)->flags);
 sb->s_dirt = 1;
}
