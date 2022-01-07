
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef void nfs_cache_array ;


 int EIO ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 void* kmap (struct page*) ;

__attribute__((used)) static
struct nfs_cache_array *nfs_readdir_get_array(struct page *page)
{
 void *ptr;
 if (page == ((void*)0))
  return ERR_PTR(-EIO);
 ptr = kmap(page);
 if (ptr == ((void*)0))
  return ERR_PTR(-ENOMEM);
 return ptr;
}
