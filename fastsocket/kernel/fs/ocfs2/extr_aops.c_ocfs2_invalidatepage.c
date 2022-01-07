
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {TYPE_3__* mapping; } ;
typedef int journal_t ;
struct TYPE_8__ {TYPE_1__* journal; } ;
struct TYPE_7__ {TYPE_2__* host; } ;
struct TYPE_6__ {int i_sb; } ;
struct TYPE_5__ {int * j_journal; } ;


 TYPE_4__* OCFS2_SB (int ) ;
 int jbd2_journal_invalidatepage (int *,struct page*,unsigned long) ;

__attribute__((used)) static void ocfs2_invalidatepage(struct page *page, unsigned long offset)
{
 journal_t *journal = OCFS2_SB(page->mapping->host->i_sb)->journal->j_journal;

 jbd2_journal_invalidatepage(journal, page, offset);
}
