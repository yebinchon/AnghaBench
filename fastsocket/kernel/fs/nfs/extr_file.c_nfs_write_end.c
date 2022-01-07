
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct address_space {TYPE_6__* host; } ;
typedef int loff_t ;
struct TYPE_12__ {int i_ino; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_10__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int PAGECACHE ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int dfprintk (int ,char*,int ,int ,int ,unsigned int,long long) ;
 unsigned int nfs_page_length (struct page*) ;
 int nfs_updatepage (struct file*,struct page*,unsigned int,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,int) ;
 int zero_user_segments (struct page*,int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static int nfs_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
 int status;

 dfprintk(PAGECACHE, "NFS: write_end(%s/%s(%ld), %u@%lld)\n",
  file->f_path.dentry->d_parent->d_name.name,
  file->f_path.dentry->d_name.name,
  mapping->host->i_ino, len, (long long) pos);





 if (!PageUptodate(page)) {
  unsigned pglen = nfs_page_length(page);
  unsigned end = offset + len;

  if (pglen == 0) {
   zero_user_segments(page, 0, offset,
     end, PAGE_CACHE_SIZE);
   SetPageUptodate(page);
  } else if (end >= pglen) {
   zero_user_segment(page, end, PAGE_CACHE_SIZE);
   if (offset == 0)
    SetPageUptodate(page);
  } else
   zero_user_segment(page, pglen, PAGE_CACHE_SIZE);
 }

 status = nfs_updatepage(file, page, offset, copied);

 unlock_page(page);
 page_cache_release(page);

 if (status < 0)
  return status;
 return copied;
}
