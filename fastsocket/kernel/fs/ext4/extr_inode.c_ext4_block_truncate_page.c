
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;


 int PAGE_CACHE_SIZE ;
 int ext4_block_zero_page_range (int *,struct address_space*,int,unsigned int) ;

int ext4_block_truncate_page(handle_t *handle,
  struct address_space *mapping, loff_t from)
{
 unsigned offset = from & (PAGE_CACHE_SIZE-1);
 unsigned length;
 unsigned blocksize;
 struct inode *inode = mapping->host;

 blocksize = inode->i_sb->s_blocksize;
 length = blocksize - (offset & (blocksize - 1));

 return ext4_block_zero_page_range(handle, mapping, from, length);
}
