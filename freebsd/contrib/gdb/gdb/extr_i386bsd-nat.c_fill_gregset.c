
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int CANNOT_STORE_REGISTER (int) ;
 int I386_NUM_GREGS ;
 int REG_ADDR (int *,int) ;
 int regcache_collect (int,int ) ;

void
fill_gregset (gregset_t *gregsetp, int regno)
{
  int i;

  for (i = 0; i < I386_NUM_GREGS; i++)
    if ((regno == -1 || regno == i) && ! CANNOT_STORE_REGISTER (i))
      regcache_collect (i, REG_ADDR (gregsetp, i));
}
