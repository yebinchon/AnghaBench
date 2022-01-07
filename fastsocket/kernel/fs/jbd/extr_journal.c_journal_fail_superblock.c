
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
struct TYPE_3__ {struct buffer_head* j_sb_buffer; } ;
typedef TYPE_1__ journal_t ;


 int brelse (struct buffer_head*) ;

__attribute__((used)) static void journal_fail_superblock (journal_t *journal)
{
 struct buffer_head *bh = journal->j_sb_buffer;
 brelse(bh);
 journal->j_sb_buffer = ((void*)0);
}
