
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;


 int block_write_begin (int *,struct address_space*,unsigned int,unsigned int,int ,struct page**,int *,int ) ;
 int nilfs_get_block ;
 unsigned int page_offset (struct page*) ;

__attribute__((used)) static int nilfs_prepare_chunk(struct page *page,
          struct address_space *mapping,
          unsigned from, unsigned to)
{
 loff_t pos = page_offset(page) + from;
 return block_write_begin(((void*)0), mapping, pos, to - from, 0, &page,
     ((void*)0), nilfs_get_block);
}
