
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysv_dir_entry {int name; int inode; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_2__* d_parent; TYPE_1__ d_name; } ;
struct TYPE_6__ {unsigned long i_dir_start_lookup; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int IS_ERR (struct page*) ;
 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ SYSV_DIRSIZE ;
 TYPE_3__* SYSV_I (struct inode*) ;
 int SYSV_NAMELEN ;
 struct page* dir_get_page (struct inode*,unsigned long) ;
 unsigned long dir_pages (struct inode*) ;
 int dir_put_page (struct page*) ;
 scalar_t__ namecompare (int,int ,char const*,int ) ;
 scalar_t__ page_address (struct page*) ;

struct sysv_dir_entry *sysv_find_entry(struct dentry *dentry, struct page **res_page)
{
 const char * name = dentry->d_name.name;
 int namelen = dentry->d_name.len;
 struct inode * dir = dentry->d_parent->d_inode;
 unsigned long start, n;
 unsigned long npages = dir_pages(dir);
 struct page *page = ((void*)0);
 struct sysv_dir_entry *de;

 *res_page = ((void*)0);

 start = SYSV_I(dir)->i_dir_start_lookup;
 if (start >= npages)
  start = 0;
 n = start;

 do {
  char *kaddr;
  page = dir_get_page(dir, n);
  if (!IS_ERR(page)) {
   kaddr = (char*)page_address(page);
   de = (struct sysv_dir_entry *) kaddr;
   kaddr += PAGE_CACHE_SIZE - SYSV_DIRSIZE;
   for ( ; (char *) de <= kaddr ; de++) {
    if (!de->inode)
     continue;
    if (namecompare(namelen, SYSV_NAMELEN,
       name, de->name))
     goto found;
   }
  }
  dir_put_page(page);

  if (++n >= npages)
   n = 0;
 } while (n != start);

 return ((void*)0);

found:
 SYSV_I(dir)->i_dir_start_lookup = n;
 *res_page = page;
 return de;
}
