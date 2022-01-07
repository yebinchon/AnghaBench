
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
typedef int journal_t ;
struct TYPE_2__ {int host; } ;


 int ClearPageChecked (struct page*) ;
 int * EXT4_JOURNAL (int ) ;
 int block_invalidatepage (struct page*,unsigned long) ;
 int jbd2_journal_invalidatepage (int *,struct page*,unsigned long) ;

__attribute__((used)) static void ext4_invalidatepage(struct page *page, unsigned long offset)
{
 journal_t *journal = EXT4_JOURNAL(page->mapping->host);




 if (offset == 0)
  ClearPageChecked(page);

 if (journal)
  jbd2_journal_invalidatepage(journal, page, offset);
 else
  block_invalidatepage(page, offset);
}
