
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_blocks; } ;
struct TYPE_3__ {int sb_bsize_shift; } ;
struct TYPE_4__ {TYPE_1__ sd_sb; } ;


 int GFS2_BASIC_BLOCK_SHIFT ;
 TYPE_2__* GFS2_SB (struct inode*) ;

__attribute__((used)) static inline void gfs2_set_inode_blocks(struct inode *inode, u64 blocks)
{
 inode->i_blocks = blocks <<
  (GFS2_SB(inode)->sd_sb.sb_bsize_shift - GFS2_BASIC_BLOCK_SHIFT);
}
