
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* t; } ;
typedef TYPE_1__ undo_t ;
struct TYPE_9__ {struct TYPE_9__* q_forw; } ;
typedef TYPE_2__ line_t ;


 int ERR ;
 int SPL0 () ;
 int SPL1 () ;
 int UADD ;
 int add_line_node (TYPE_2__*) ;
 int current_addr ;
 TYPE_2__* dup_line_node (TYPE_2__*) ;
 int first_addr ;
 TYPE_2__* get_addressed_line_node (int) ;
 int modified ;
 TYPE_1__* push_undo_stack (int ,int,int) ;
 int second_addr ;

int
copy_lines(long addr)
{
 line_t *lp, *np = get_addressed_line_node(first_addr);
 undo_t *up = ((void*)0);
 long n = second_addr - first_addr + 1;
 long m = 0;

 current_addr = addr;
 if (first_addr <= addr && addr < second_addr) {
  n = addr - first_addr + 1;
  m = second_addr - addr;
 }
 for (; n > 0; n=m, m=0, np = get_addressed_line_node(current_addr + 1))
  for (; n-- > 0; np = np->q_forw) {
   SPL1();
   if ((lp = dup_line_node(np)) == ((void*)0)) {
    SPL0();
    return ERR;
   }
   add_line_node(lp);
   if (up)
    up->t = lp;
   else if ((up = push_undo_stack(UADD, current_addr,
       current_addr)) == ((void*)0)) {
    SPL0();
    return ERR;
   }
   modified = 1;
   SPL0();
  }
 return 0;
}
