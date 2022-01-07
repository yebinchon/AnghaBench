
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
typedef int journal_t ;
struct TYPE_2__ {int host; } ;


 int ClearPageChecked (struct page*) ;
 int * EXT3_JOURNAL (int ) ;
 int journal_invalidatepage (int *,struct page*,unsigned long) ;
 int trace_ext3_invalidatepage (struct page*,unsigned long) ;

__attribute__((used)) static void ext3_invalidatepage(struct page *page, unsigned long offset)
{
 journal_t *journal = EXT3_JOURNAL(page->mapping->host);

 trace_ext3_invalidatepage(page, offset);




 if (offset == 0)
  ClearPageChecked(page);

 journal_invalidatepage(journal, page, offset);
}
