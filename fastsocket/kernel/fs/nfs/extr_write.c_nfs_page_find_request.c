
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct nfs_page {int dummy; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct nfs_page* nfs_page_find_request_locked (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_page *nfs_page_find_request(struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct nfs_page *req = ((void*)0);

 spin_lock(&inode->i_lock);
 req = nfs_page_find_request_locked(page);
 spin_unlock(&inode->i_lock);
 return req;
}
