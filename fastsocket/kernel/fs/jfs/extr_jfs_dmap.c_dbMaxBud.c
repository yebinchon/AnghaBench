
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef size_t u8 ;
typedef scalar_t__ u16 ;


 int BUDMIN ;
 char* budtab ;
 int max (char,char) ;

__attribute__((used)) static int dbMaxBud(u8 * cp)
{
 signed char tmp1, tmp2;




 if (*((uint *) cp) == 0)
  return (BUDMIN);




 if (*((u16 *) cp) == 0 || *((u16 *) cp + 1) == 0)
  return (BUDMIN - 1);




 tmp1 = max(budtab[cp[2]], budtab[cp[3]]);
 tmp2 = max(budtab[cp[0]], budtab[cp[1]]);
 return (max(tmp1, tmp2));
}
