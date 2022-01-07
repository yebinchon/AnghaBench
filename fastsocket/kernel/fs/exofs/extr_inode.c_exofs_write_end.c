
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {scalar_t__ i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;


 int mark_inode_dirty (struct inode*) ;
 int simple_write_end (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ;

__attribute__((used)) static int exofs_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;

 loff_t i_size = inode->i_size;
 int ret;

 ret = simple_write_end(file, mapping,pos, len, copied, page, fsdata);
 if (i_size != inode->i_size)
  mark_inode_dirty(inode);
 return ret;
}
