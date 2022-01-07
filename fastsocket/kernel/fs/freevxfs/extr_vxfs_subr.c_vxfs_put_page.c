
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;

inline void
vxfs_put_page(struct page *pp)
{
 kunmap(pp);
 page_cache_release(pp);
}
