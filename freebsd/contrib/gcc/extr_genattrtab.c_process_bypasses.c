
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_reserv {scalar_t__ name; int bypassed; struct insn_reserv* next; } ;
struct bypass_list {scalar_t__ insn; struct bypass_list* next; } ;


 struct bypass_list* all_bypasses ;
 struct insn_reserv* all_insn_reservs ;

__attribute__((used)) static void
process_bypasses (void)
{
  struct bypass_list *b;
  struct insn_reserv *r;



  for (r = all_insn_reservs; r; r = r->next)
    for (b = all_bypasses; b; b = b->next)
      if (r->name == b->insn)
 r->bypassed = 1;
}
