
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* q_forw; struct TYPE_4__* q_back; } ;
typedef TYPE_1__ line_t ;


 int SPL0 () ;
 int SPL1 () ;
 long addr_last ;
 TYPE_1__ buffer_head ;

line_t *
get_addressed_line_node(long n)
{
 static line_t *lp = &buffer_head;
 static long on = 0;

 SPL1();
 if (n > on)
  if (n <= (on + addr_last) >> 1)
   for (; on < n; on++)
    lp = lp->q_forw;
  else {
   lp = buffer_head.q_back;
   for (on = addr_last; on > n; on--)
    lp = lp->q_back;
  }
 else
  if (n >= on >> 1)
   for (; on > n; on--)
    lp = lp->q_back;
  else {
   lp = &buffer_head;
   for (on = 0; on < n; on++)
    lp = lp->q_forw;
  }
 SPL0();
 return lp;
}
