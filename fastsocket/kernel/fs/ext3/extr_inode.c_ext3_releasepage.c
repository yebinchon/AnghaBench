
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
typedef int journal_t ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 int * EXT3_JOURNAL (int ) ;
 int PageChecked (struct page*) ;
 int WARN_ON (int ) ;
 int journal_try_to_free_buffers (int *,struct page*,int ) ;
 int page_has_buffers (struct page*) ;
 int trace_ext3_releasepage (struct page*) ;

__attribute__((used)) static int ext3_releasepage(struct page *page, gfp_t wait)
{
 journal_t *journal = EXT3_JOURNAL(page->mapping->host);

 trace_ext3_releasepage(page);
 WARN_ON(PageChecked(page));
 if (!page_has_buffers(page))
  return 0;
 return journal_try_to_free_buffers(journal, page, wait);
}
