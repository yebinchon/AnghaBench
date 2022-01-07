
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MACHINE_MODE ;
 int gen_rtx_MEM (int,int ) ;
 int stack_pointer_rtx ;
 int * top_of_stack ;

void
init_fake_stack_mems (void)
{
  {
    int i;

    for (i = 0; i < MAX_MACHINE_MODE; i++)
      top_of_stack[i] = gen_rtx_MEM (i, stack_pointer_rtx);
  }
}
