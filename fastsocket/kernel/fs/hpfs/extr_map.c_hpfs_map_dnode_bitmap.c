
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_2__ {int sb_dmap; } ;


 unsigned int* hpfs_map_4sectors (struct super_block*,int ,struct quad_buffer_head*,int ) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;

unsigned *hpfs_map_dnode_bitmap(struct super_block *s, struct quad_buffer_head *qbh)
{
 return hpfs_map_4sectors(s, hpfs_sb(s)->sb_dmap, qbh, 0);
}
