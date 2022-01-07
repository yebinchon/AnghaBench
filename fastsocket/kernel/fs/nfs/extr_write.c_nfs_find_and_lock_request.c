
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct nfs_page {int dummy; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EAGAIN ;
 struct nfs_page* ERR_PTR (int) ;
 scalar_t__ nfs_lock_request (struct nfs_page*) ;
 struct nfs_page* nfs_page_find_request_locked (struct page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_wait_on_request (struct nfs_page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_page *nfs_find_and_lock_request(struct page *page, bool nonblock)
{
 struct inode *inode = page->mapping->host;
 struct nfs_page *req;
 int ret;

 spin_lock(&inode->i_lock);
 for (;;) {
  req = nfs_page_find_request_locked(page);
  if (req == ((void*)0))
   break;
  if (nfs_lock_request(req))
   break;





  spin_unlock(&inode->i_lock);
  if (!nonblock)
   ret = nfs_wait_on_request(req);
  else
   ret = -EAGAIN;
  nfs_release_request(req);
  if (ret != 0)
   return ERR_PTR(ret);
  spin_lock(&inode->i_lock);
 }
 spin_unlock(&inode->i_lock);
 return req;
}
