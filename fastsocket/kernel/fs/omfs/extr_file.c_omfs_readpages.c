
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;


 int mpage_readpages (struct address_space*,struct list_head*,unsigned int,int ) ;
 int omfs_get_block ;

__attribute__((used)) static int omfs_readpages(struct file *file, struct address_space *mapping,
  struct list_head *pages, unsigned nr_pages)
{
 return mpage_readpages(mapping, pages, nr_pages, omfs_get_block);
}
