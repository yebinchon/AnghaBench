
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int* buf; int len; } ;
typedef enum agent_op { ____Placeholder_agent_op } agent_op ;
typedef int LONGEST ;


 int error (char*) ;
 int grow_expr (struct agent_expr*,int) ;

__attribute__((used)) static void
generic_ext (struct agent_expr *x, enum agent_op op, int n)
{

  if (n < 0 || n > 255)
    error ("GDB bug: ax-general.c (generic_ext): bit count out of range");

  if (sizeof (LONGEST) * 8 > 255)
    error ("GDB bug: ax-general.c (generic_ext): opcode has inadequate range");

  grow_expr (x, 2);
  x->buf[x->len++] = op;
  x->buf[x->len++] = n;
}
