
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int INTVAL (int ) ;

rtx
mips_prefetch_cookie (rtx write, rtx locality)
{

  if (INTVAL (locality) <= 0)
    return GEN_INT (INTVAL (write) + 4);


  if (INTVAL (locality) <= 2)
    return write;


  return GEN_INT (INTVAL (write) + 6);
}
