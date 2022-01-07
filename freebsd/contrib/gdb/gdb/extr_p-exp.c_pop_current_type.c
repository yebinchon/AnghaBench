
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_push {struct type_push* next; int stored; } ;


 int current_type ;
 struct type_push* tp_top ;
 int xfree (struct type_push*) ;

__attribute__((used)) static void
pop_current_type (void)
{
  struct type_push *tp = tp_top;
  if (tp)
    {
      current_type = tp->stored;
      tp_top = tp->next;
      xfree (tp);
    }
}
