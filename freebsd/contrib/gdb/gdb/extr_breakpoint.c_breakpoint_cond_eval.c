
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct expression {int dummy; } ;


 int evaluate_expression (struct expression*) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;
 int value_true (int ) ;

__attribute__((used)) static int
breakpoint_cond_eval (void *exp)
{
  struct value *mark = value_mark ();
  int i = !value_true (evaluate_expression ((struct expression *) exp));
  value_free_to_mark (mark);
  return i;
}
