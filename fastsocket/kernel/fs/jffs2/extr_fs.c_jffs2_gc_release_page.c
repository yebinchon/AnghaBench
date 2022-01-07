
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;


 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;

void jffs2_gc_release_page(struct jffs2_sb_info *c,
      unsigned char *ptr,
      unsigned long *priv)
{
 struct page *pg = (void *)*priv;

 kunmap(pg);
 page_cache_release(pg);
}
