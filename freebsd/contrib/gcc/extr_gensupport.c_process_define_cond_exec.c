
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_elem {struct queue_elem* next; } ;


 struct queue_elem* define_cond_exec_queue ;
 scalar_t__ errors ;
 int identify_predicable_attribute () ;
 int process_one_cond_exec (struct queue_elem*) ;

__attribute__((used)) static void
process_define_cond_exec (void)
{
  struct queue_elem *elem;

  identify_predicable_attribute ();
  if (errors)
    return;

  for (elem = define_cond_exec_queue; elem ; elem = elem->next)
    process_one_cond_exec (elem);
}
