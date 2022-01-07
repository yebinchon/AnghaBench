
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 scalar_t__ CANNOT_FETCH_REGISTER (int) ;
 int I386_NUM_GREGS ;
 int * REG_ADDR (int *,int) ;
 int supply_register (int,int *) ;

void
supply_gregset (gregset_t *gregsetp)
{
  int i;

  for (i = 0; i < I386_NUM_GREGS; i++)
    {
      if (CANNOT_FETCH_REGISTER (i))
 supply_register (i, ((void*)0));
      else
 supply_register (i, REG_ADDR (gregsetp, i));
    }
}
