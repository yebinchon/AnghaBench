
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* q_forw; } ;
typedef TYPE_2__ line_t ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__* h; TYPE_1__* t; } ;
struct TYPE_6__ {TYPE_2__* q_forw; } ;


 scalar_t__ UDEL ;
 int addr_last ;
 int current_addr ;
 int free (TYPE_2__*) ;
 int u_addr_last ;
 int u_current_addr ;
 size_t u_p ;
 int unmark_line_node (TYPE_2__*) ;
 TYPE_3__* ustack ;

void
clear_undo_stack(void)
{
 line_t *lp, *ep, *tl;

 while (u_p--)
  if (ustack[u_p].type == UDEL) {
   ep = ustack[u_p].t->q_forw;
   for (lp = ustack[u_p].h; lp != ep; lp = tl) {
    unmark_line_node(lp);
    tl = lp->q_forw;
    free(lp);
   }
  }
 u_p = 0;
 u_current_addr = current_addr;
 u_addr_last = addr_last;
}
