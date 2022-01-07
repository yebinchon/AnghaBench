
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;


 int block_prepare_write (struct page*,unsigned int,unsigned int,int ) ;
 int ocfs2_get_block ;

int ocfs2_prepare_write_nolock(struct inode *inode, struct page *page,
          unsigned from, unsigned to)
{
 int ret;

 ret = block_prepare_write(page, from, to, ocfs2_get_block);

 return ret;
}
