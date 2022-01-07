
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int get_block (struct inode*,long,struct buffer_head*,int) ;

int V1_minix_get_block(struct inode * inode, long block,
   struct buffer_head *bh_result, int create)
{
 return get_block(inode, block, bh_result, create);
}
