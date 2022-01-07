
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int GFP_SLAB_BUG_MASK ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int try_release_extent_buffer (struct page*,int ) ;

__attribute__((used)) static int btree_releasepage(struct page *page, gfp_t gfp_flags)
{
 if (PageWriteback(page) || PageDirty(page))
  return 0;





 gfp_flags &= ~GFP_SLAB_BUG_MASK;

 return try_release_extent_buffer(page, gfp_flags);
}
