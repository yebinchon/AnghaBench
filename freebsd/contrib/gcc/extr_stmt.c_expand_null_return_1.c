
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_pending_stack_adjust () ;
 int do_pending_stack_adjust () ;
 int emit_jump (int ) ;
 int return_label ;

__attribute__((used)) static void
expand_null_return_1 (void)
{
  clear_pending_stack_adjust ();
  do_pending_stack_adjust ();
  emit_jump (return_label);
}
