
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 scalar_t__ INODE_VERSION (struct inode*) ;
 scalar_t__ MINIX_V1 ;
 int V1_minix_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int V2_minix_get_block (struct inode*,int ,struct buffer_head*,int) ;

__attribute__((used)) static int minix_get_block(struct inode *inode, sector_t block,
      struct buffer_head *bh_result, int create)
{
 if (INODE_VERSION(inode) == MINIX_V1)
  return V1_minix_get_block(inode, block, bh_result, create);
 else
  return V2_minix_get_block(inode, block, bh_result, create);
}
