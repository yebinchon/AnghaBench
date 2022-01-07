
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct page {int dummy; } ;
typedef int journal_t ;
typedef int gfp_t ;
struct TYPE_2__ {int * s_journal; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 int PageChecked (struct page*) ;
 int WARN_ON (int ) ;
 int __GFP_WAIT ;
 int journal_try_to_free_buffers (int *,struct page*,int) ;
 int page_has_buffers (struct page*) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static int bdev_try_to_free_page(struct super_block *sb, struct page *page,
     gfp_t wait)
{
 journal_t *journal = EXT3_SB(sb)->s_journal;

 WARN_ON(PageChecked(page));
 if (!page_has_buffers(page))
  return 0;
 if (journal)
  return journal_try_to_free_buffers(journal, page,
         wait & ~__GFP_WAIT);
 return try_to_free_buffers(page);
}
