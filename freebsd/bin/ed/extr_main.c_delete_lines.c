
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int q_forw; } ;
typedef TYPE_1__ line_t ;


 int ERR ;
 long INC_MOD (long,long) ;
 int REQUE (TYPE_1__*,TYPE_1__*) ;
 int SPL0 () ;
 int SPL1 () ;
 int UDEL ;
 long addr_last ;
 long current_addr ;
 TYPE_1__* get_addressed_line_node (long) ;
 scalar_t__ isglobal ;
 int modified ;
 int * push_undo_stack (int ,long,long) ;
 int unset_active_nodes (int ,TYPE_1__*) ;

int
delete_lines(long from, long to)
{
 line_t *n, *p;

 SPL1();
 if (push_undo_stack(UDEL, from, to) == ((void*)0)) {
  SPL0();
  return ERR;
 }
 n = get_addressed_line_node(INC_MOD(to, addr_last));
 p = get_addressed_line_node(from - 1);

 if (isglobal)
  unset_active_nodes(p->q_forw, n);
 REQUE(p, n);
 addr_last -= to - from + 1;
 current_addr = from - 1;
 modified = 1;
 SPL0();
 return 0;
}
