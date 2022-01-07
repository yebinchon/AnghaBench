
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_context {int started; int reg; int fp; } ;


 int fprintf (int ,char*,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static int
print_conflict (int reg1, int reg2, void *contextp)
{
  struct print_context *context = (struct print_context *) contextp;
  int reg;



  if (! context->started)
    {
      fprintf (context->fp, " %d:", context->reg);
      context->started = 1;
    }



  if (reg1 == context->reg)
    reg = reg2;
  else
    {
      gcc_assert (reg2 == context->reg);
      reg = reg1;
    }


  fprintf (context->fp, " %d", reg);


  return 0;
}
