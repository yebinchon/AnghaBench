
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct TYPE_5__ {int i_blkbits; } ;


 scalar_t__ NILFS_MDT (TYPE_1__*) ;
 int inode_add_bytes (TYPE_1__*,int) ;
 int mark_inode_dirty (TYPE_1__*) ;
 int nilfs_mdt_mark_dirty (TYPE_1__*) ;

void nilfs_bmap_add_blocks(const struct nilfs_bmap *bmap, int n)
{
 inode_add_bytes(bmap->b_inode, (1 << bmap->b_inode->i_blkbits) * n);
 if (NILFS_MDT(bmap->b_inode))
  nilfs_mdt_mark_dirty(bmap->b_inode);
 else
  mark_inode_dirty(bmap->b_inode);
}
