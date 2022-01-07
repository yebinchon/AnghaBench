
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int map_bh (struct buffer_head*,int ,int ) ;

__attribute__((used)) static int exofs_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh_result, int create)
{
 map_bh(bh_result, inode->i_sb, iblock);
 return 0;
}
