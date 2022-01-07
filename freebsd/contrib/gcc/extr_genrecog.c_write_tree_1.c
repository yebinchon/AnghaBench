
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decision_head {TYPE_1__* last; struct decision* first; } ;
struct decision {struct decision* next; int number; scalar_t__ need_label; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;
struct TYPE_2__ {int afterward; } ;


 int OUTPUT_LABEL (char*,int ) ;
 int write_afterward (TYPE_1__*,int ,char*) ;
 int write_node (struct decision*,int,int) ;
 struct decision* write_switch (struct decision*,int) ;

__attribute__((used)) static void
write_tree_1 (struct decision_head *head, int depth,
       enum routine_type subroutine_type)
{
  struct decision *p, *next;
  int uncond = 0;

  for (p = head->first; p ; p = next)
    {

      if (p != head->first && p->need_label)
 OUTPUT_LABEL (" ", p->number);


      next = write_switch (p, depth);
      if (p != next)
 uncond = 0;
      else
 {

   uncond = write_node (p, depth, subroutine_type);
   next = p->next;
 }
    }



  if (! uncond)
    write_afterward (head->last, head->last->afterward, "  ");
}
