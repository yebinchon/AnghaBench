
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
struct TYPE_10__ {struct TYPE_10__* next; } ;


 scalar_t__ USE_FROM_PTR (TYPE_1__*) ;
 int delink_imm_use (TYPE_1__*) ;
 int gcc_assert (int) ;
 int link_imm_use_to_list (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static inline use_operand_p
move_use_after_head (use_operand_p use_p, use_operand_p head,
        use_operand_p last_p)
{
  gcc_assert (USE_FROM_PTR (use_p) == USE_FROM_PTR (head));

  if (use_p != head)
    {

      if (last_p->next == use_p)
 last_p = use_p;
      else
 {

   delink_imm_use (use_p);
   link_imm_use_to_list (use_p, last_p);
   last_p = use_p;
 }
    }
  return last_p;
}
