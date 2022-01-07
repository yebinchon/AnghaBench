
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qnx4_xblk {int xblk_num_xtnts; int xblk_next_xblk; TYPE_2__* xblk_xtnts; int xblk_signature; } ;
struct TYPE_3__ {int xtnt_size; int xtnt_blk; } ;
struct qnx4_inode_entry {int i_xblk; TYPE_1__ di_first_xtnt; int di_xblk; int di_num_xtnts; } ;
struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int xtnt_size; int xtnt_blk; } ;


 unsigned long EIO ;
 int QNX4DEBUG (char*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 long le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 struct qnx4_inode_entry* qnx4_raw_inode (struct inode*) ;
 struct buffer_head* sb_bread (int ,long) ;

unsigned long qnx4_block_map( struct inode *inode, long iblock )
{
 int ix;
 long offset, i_xblk;
 unsigned long block = 0;
 struct buffer_head *bh = ((void*)0);
 struct qnx4_xblk *xblk = ((void*)0);
 struct qnx4_inode_entry *qnx4_inode = qnx4_raw_inode(inode);
 u16 nxtnt = le16_to_cpu(qnx4_inode->di_num_xtnts);

 if ( iblock < le32_to_cpu(qnx4_inode->di_first_xtnt.xtnt_size) ) {

  block = le32_to_cpu(qnx4_inode->di_first_xtnt.xtnt_blk) + iblock - 1;
 } else {

  i_xblk = le32_to_cpu(qnx4_inode->di_xblk);
  offset = iblock - le32_to_cpu(qnx4_inode->di_first_xtnt.xtnt_size);
  ix = 0;
  while ( --nxtnt > 0 ) {
   if ( ix == 0 ) {

    bh = sb_bread(inode->i_sb, i_xblk - 1);
    if ( !bh ) {
     QNX4DEBUG(("qnx4: I/O error reading xtnt block [%ld])\n", i_xblk - 1));
     return -EIO;
    }
    xblk = (struct qnx4_xblk*)bh->b_data;
    if ( memcmp( xblk->xblk_signature, "IamXblk", 7 ) ) {
     QNX4DEBUG(("qnx4: block at %ld is not a valid xtnt\n", qnx4_inode->i_xblk));
     return -EIO;
    }
   }
   if ( offset < le32_to_cpu(xblk->xblk_xtnts[ix].xtnt_size) ) {

    block = le32_to_cpu(xblk->xblk_xtnts[ix].xtnt_blk) + offset - 1;
    break;
   }
   offset -= le32_to_cpu(xblk->xblk_xtnts[ix].xtnt_size);
   if ( ++ix >= xblk->xblk_num_xtnts ) {
    i_xblk = le32_to_cpu(xblk->xblk_next_xblk);
    ix = 0;
    brelse( bh );
    bh = ((void*)0);
   }
  }
  if ( bh )
   brelse( bh );
 }

 QNX4DEBUG(("qnx4: mapping block %ld of inode %ld = %ld\n",iblock,inode->i_ino,block));
 return block;
}
