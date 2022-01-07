
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int ess_getmixer (int *,int) ;
 int ess_setmixer (int *,int,int) ;

__attribute__((used)) static int ess_probe (sb_devc * devc, int reg, int xorval)
{
 int val1, val2, val3;

 val1 = ess_getmixer (devc, reg);
 val2 = val1 ^ xorval;
 ess_setmixer (devc, reg, val2);
 val3 = ess_getmixer (devc, reg);
 ess_setmixer (devc, reg, val1);

 return (val2 == val3);
}
