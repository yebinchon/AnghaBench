
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 int FSCACHE ;
 int SetPageUptodate (struct page*) ;
 int dfprintk (int ,char*,struct page*,void*,int) ;
 int nfs_readpage_async (void*,int ,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void nfs_readpage_from_fscache_complete(struct page *page,
            void *context,
            int error)
{
 dfprintk(FSCACHE,
   "NFS: readpage_from_fscache_complete (0x%p/0x%p/%d)\n",
   page, context, error);



 if (!error) {
  SetPageUptodate(page);
  unlock_page(page);
 } else {
  error = nfs_readpage_async(context, page->mapping->host, page);
  if (error)
   unlock_page(page);
 }
}
