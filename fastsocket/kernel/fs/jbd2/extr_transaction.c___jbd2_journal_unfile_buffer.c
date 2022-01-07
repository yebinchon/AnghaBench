
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int * b_transaction; } ;


 int __jbd2_journal_temp_unlink_buffer (struct journal_head*) ;

void __jbd2_journal_unfile_buffer(struct journal_head *jh)
{
 __jbd2_journal_temp_unlink_buffer(jh);
 jh->b_transaction = ((void*)0);
}
