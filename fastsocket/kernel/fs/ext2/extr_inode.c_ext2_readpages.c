
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;


 int ext2_get_block ;
 int mpage_readpages (struct address_space*,struct list_head*,unsigned int,int ) ;

__attribute__((used)) static int
ext2_readpages(struct file *file, struct address_space *mapping,
  struct list_head *pages, unsigned nr_pages)
{
 return mpage_readpages(mapping, pages, nr_pages, ext2_get_block);
}
