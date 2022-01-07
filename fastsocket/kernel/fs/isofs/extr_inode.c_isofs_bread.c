
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int isofs_bmap (struct inode*,int ) ;
 struct buffer_head* sb_bread (int ,int ) ;

struct buffer_head *isofs_bread(struct inode *inode, sector_t block)
{
 sector_t blknr = isofs_bmap(inode, block);
 if (!blknr)
  return ((void*)0);
 return sb_bread(inode->i_sb, blknr);
}
