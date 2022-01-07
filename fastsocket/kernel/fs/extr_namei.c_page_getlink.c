
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int i_size; struct address_space* i_mapping; } ;


 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_SIZE ;
 char* kmap (struct page*) ;
 int nd_terminate_link (char*,int ,scalar_t__) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;

__attribute__((used)) static char *page_getlink(struct dentry * dentry, struct page **ppage)
{
 char *kaddr;
 struct page *page;
 struct address_space *mapping = dentry->d_inode->i_mapping;
 page = read_mapping_page(mapping, 0, ((void*)0));
 if (IS_ERR(page))
  return (char*)page;
 *ppage = page;
 kaddr = kmap(page);
 nd_terminate_link(kaddr, dentry->d_inode->i_size, PAGE_SIZE - 1);
 return kaddr;
}
