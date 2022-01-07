
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int wb_kref; } ;


 scalar_t__ PagePrivate (struct page*) ;
 int kref_get (int *) ;
 scalar_t__ page_private (struct page*) ;

__attribute__((used)) static struct nfs_page *nfs_page_find_request_locked(struct page *page)
{
 struct nfs_page *req = ((void*)0);

 if (PagePrivate(page)) {
  req = (struct nfs_page *)page_private(page);
  if (req != ((void*)0))
   kref_get(&req->wb_kref);
 }
 return req;
}
