
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int len; int* buf; } ;
typedef int LONGEST ;


 int error (char*) ;

__attribute__((used)) static LONGEST
read_const (struct agent_expr *x, int o, int n)
{
  int i;
  LONGEST accum = 0;


  if (o + n > x->len)
    error ("GDB bug: ax-general.c (read_const): incomplete constant");

  for (i = 0; i < n; i++)
    accum = (accum << 8) | x->buf[o + i];

  return accum;
}
