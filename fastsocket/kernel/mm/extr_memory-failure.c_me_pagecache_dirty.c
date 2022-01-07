
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int EIO ;
 int SetPageError (struct page*) ;
 int mapping_set_error (struct address_space*,int ) ;
 int me_pagecache_clean (struct page*,unsigned long) ;
 struct address_space* page_mapping (struct page*) ;

__attribute__((used)) static int me_pagecache_dirty(struct page *p, unsigned long pfn)
{
 struct address_space *mapping = page_mapping(p);

 SetPageError(p);

 if (mapping) {
  mapping_set_error(mapping, EIO);
 }

 return me_pagecache_clean(p, pfn);
}
