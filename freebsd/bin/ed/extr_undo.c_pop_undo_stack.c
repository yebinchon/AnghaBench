
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* q_back; struct TYPE_7__* q_forw; } ;
struct TYPE_6__ {int type; TYPE_4__* t; TYPE_4__* h; } ;


 int ERR ;
 int REQUE (TYPE_4__*,TYPE_4__*) ;
 int SPL0 () ;
 int SPL1 () ;



 int USWAP (TYPE_1__,TYPE_1__) ;

 long addr_last ;
 int clear_active_list () ;
 long current_addr ;
 char* errmsg ;
 int get_addressed_line_node (int ) ;
 scalar_t__ isglobal ;
 int modified ;
 int u_addr_last ;
 int u_current_addr ;
 long u_p ;
 TYPE_1__* ustack ;

int
pop_undo_stack(void)
{
 long n;
 long o_current_addr = current_addr;
 long o_addr_last = addr_last;

 if (u_current_addr == -1 || u_addr_last == -1) {
  errmsg = "nothing to undo";
  return ERR;
 } else if (u_p)
  modified = 1;
 get_addressed_line_node(0);
 SPL1();
 for (n = u_p; n-- > 0;) {
  switch(ustack[n].type) {
  case 131:
   REQUE(ustack[n].h->q_back, ustack[n].t->q_forw);
   break;
  case 130:
   REQUE(ustack[n].h->q_back, ustack[n].h);
   REQUE(ustack[n].t, ustack[n].t->q_forw);
   break;
  case 129:
  case 128:
   REQUE(ustack[n - 1].h, ustack[n].h->q_forw);
   REQUE(ustack[n].t->q_back, ustack[n - 1].t);
   REQUE(ustack[n].h, ustack[n].t);
   n--;
   break;
  default:

   ;
  }
  ustack[n].type ^= 1;
 }

 for (n = u_p; n-- > (u_p + 1)/ 2;)
  USWAP(ustack[n], ustack[u_p - 1 - n]);
 if (isglobal)
  clear_active_list();
 current_addr = u_current_addr, u_current_addr = o_current_addr;
 addr_last = u_addr_last, u_addr_last = o_addr_last;
 SPL0();
 return 0;
}
