
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int dummy; } ;
struct jbd2_buffer_trigger_type {int (* t_abort ) (struct jbd2_buffer_trigger_type*,int ) ;} ;


 int jh2bh (struct journal_head*) ;
 int stub1 (struct jbd2_buffer_trigger_type*,int ) ;

void jbd2_buffer_abort_trigger(struct journal_head *jh,
          struct jbd2_buffer_trigger_type *triggers)
{
 if (!triggers || !triggers->t_abort)
  return;

 triggers->t_abort(triggers, jh2bh(jh));
}
