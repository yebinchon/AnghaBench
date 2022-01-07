
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_12__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct address_space {TYPE_7__* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_14__ {int i_ino; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_11__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;


 int ENOMEM ;
 TYPE_6__* NFS_I (TYPE_7__*) ;
 int NFS_INO_FLUSHING ;
 int PAGECACHE ;
 int PAGE_CACHE_SHIFT ;
 int TASK_KILLABLE ;
 int dfprintk (int ,char*,int ,int ,int ,unsigned int,long long) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int nfs_flush_incompatible (struct file*,struct page*) ;
 int nfs_readpage (struct file*,struct page*) ;
 int nfs_wait_bit_killable ;
 scalar_t__ nfs_want_read_modify_write (struct file*,struct page*,int,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_bit (int *,int ,int ,int ) ;

__attribute__((used)) static int nfs_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 int ret;
 pgoff_t index = pos >> PAGE_CACHE_SHIFT;
 struct page *page;
 int once_thru = 0;

 dfprintk(PAGECACHE, "NFS: write_begin(%s/%s(%ld), %u@%lld)\n",
  file->f_path.dentry->d_parent->d_name.name,
  file->f_path.dentry->d_name.name,
  mapping->host->i_ino, len, (long long) pos);

start:




 ret = wait_on_bit(&NFS_I(mapping->host)->flags, NFS_INO_FLUSHING,
   nfs_wait_bit_killable, TASK_KILLABLE);
 if (ret)
  return ret;

 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;
 *pagep = page;

 ret = nfs_flush_incompatible(file, page);
 if (ret) {
  unlock_page(page);
  page_cache_release(page);
 } else if (!once_thru &&
     nfs_want_read_modify_write(file, page, pos, len)) {
  once_thru = 1;
  ret = nfs_readpage(file, page);
  page_cache_release(page);
  if (!ret)
   goto start;
 }
 return ret;
}
