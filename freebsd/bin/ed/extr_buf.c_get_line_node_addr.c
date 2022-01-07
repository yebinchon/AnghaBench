
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* q_forw; } ;
typedef TYPE_1__ line_t ;


 long ERR ;
 TYPE_1__ buffer_head ;
 char* errmsg ;

long
get_line_node_addr(line_t *lp)
{
 line_t *cp = &buffer_head;
 long n = 0;

 while (cp != lp && (cp = cp->q_forw) != &buffer_head)
  n++;
 if (n && cp == &buffer_head) {
  errmsg = "invalid address";
  return ERR;
  }
  return n;
}
