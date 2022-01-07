
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int dummy; } ;
typedef enum agent_op { ____Placeholder_agent_op } agent_op ;
typedef int LONGEST ;






 int append_const (struct agent_expr*,int,int) ;
 int ax_ext (struct agent_expr*,int) ;
 int ax_simple (struct agent_expr*,int) ;

void
ax_const_l (struct agent_expr *x, LONGEST l)
{
  static enum agent_op ops[]
  =
  {128, 131, 130, 129};
  int size;
  int op;





  for (op = 0, size = 8; size < 64; size *= 2, op++)
    if (-((LONGEST) 1 << size) <= l && l < ((LONGEST) 1 << size))
      break;


  ax_simple (x, ops[op]);



  append_const (x, l, size / 8);


  if (l < 0 && size < 64)
    ax_ext (x, size);
}
