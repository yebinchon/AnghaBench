
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef int get_block_t ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPageUptodate (struct page*) ;
 int __block_prepare_write (struct inode*,struct page*,unsigned int,unsigned int,int *) ;

int block_prepare_write(struct page *page, unsigned from, unsigned to,
   get_block_t *get_block)
{
 struct inode *inode = page->mapping->host;
 int err = __block_prepare_write(inode, page, from, to, get_block);
 if (err)
  ClearPageUptodate(page);
 return err;
}
