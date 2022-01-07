
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {struct jbd2_buffer_trigger_type* b_triggers; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct journal_head* bh2jh (struct buffer_head*) ;

void jbd2_journal_set_triggers(struct buffer_head *bh,
          struct jbd2_buffer_trigger_type *type)
{
 struct journal_head *jh = bh2jh(bh);

 jh->b_triggers = type;
}
