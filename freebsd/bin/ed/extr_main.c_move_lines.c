
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* q_forw; struct TYPE_7__* q_back; } ;
typedef TYPE_1__ line_t ;


 int ERR ;
 long INC_MOD (long,int ) ;
 int REQUE (TYPE_1__*,TYPE_1__*) ;
 int SPL0 () ;
 int SPL1 () ;
 int UMOV ;
 int addr_last ;
 long current_addr ;
 int first_addr ;
 TYPE_1__* get_addressed_line_node (long) ;
 scalar_t__ isglobal ;
 int modified ;
 int * push_undo_stack (int ,long,long) ;
 long second_addr ;
 int unset_active_nodes (TYPE_1__*,TYPE_1__*) ;

int
move_lines(long addr)
{
 line_t *b1, *a1, *b2, *a2;
 long n = INC_MOD(second_addr, addr_last);
 long p = first_addr - 1;
 int done = (addr == first_addr - 1 || addr == second_addr);

 SPL1();
 if (done) {
  a2 = get_addressed_line_node(n);
  b2 = get_addressed_line_node(p);
  current_addr = second_addr;
 } else if (push_undo_stack(UMOV, p, n) == ((void*)0) ||
     push_undo_stack(UMOV, addr, INC_MOD(addr, addr_last)) == ((void*)0)) {
  SPL0();
  return ERR;
 } else {
  a1 = get_addressed_line_node(n);
  if (addr < first_addr) {
   b1 = get_addressed_line_node(p);
   b2 = get_addressed_line_node(addr);

  } else {
   b2 = get_addressed_line_node(addr);
   b1 = get_addressed_line_node(p);

  }
  a2 = b2->q_forw;
  REQUE(b2, b1->q_forw);
  REQUE(a1->q_back, a2);
  REQUE(b1, a1);
  current_addr = addr + ((addr < first_addr) ?
      second_addr - first_addr + 1 : 0);
 }
 if (isglobal)
  unset_active_nodes(b2->q_forw, a2);
 modified = 1;
 SPL0();
 return 0;
}
