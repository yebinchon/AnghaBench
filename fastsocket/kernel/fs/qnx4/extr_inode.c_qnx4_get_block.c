
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int QNX4DEBUG (char*) ;
 int map_bh (struct buffer_head*,int ,unsigned long) ;
 unsigned long qnx4_block_map (struct inode*,int ) ;

__attribute__((used)) static int qnx4_get_block( struct inode *inode, sector_t iblock, struct buffer_head *bh, int create )
{
 unsigned long phys;

 QNX4DEBUG(("qnx4: qnx4_get_block inode=[%ld] iblock=[%ld]\n",inode->i_ino,iblock));

 phys = qnx4_block_map( inode, iblock );
 if ( phys ) {

  map_bh(bh, inode->i_sb, phys);
 } else if ( create ) {

 }
 return 0;
}
