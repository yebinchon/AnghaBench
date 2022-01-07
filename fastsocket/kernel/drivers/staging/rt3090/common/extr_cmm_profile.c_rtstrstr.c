
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSTRING ;
typedef scalar_t__ INT ;


 int memcmp (int *,int * const,scalar_t__) ;
 scalar_t__ strlen (int *) ;

PSTRING rtstrstr(PSTRING s1,const PSTRING s2)
{
 INT l1, l2;

 l2 = strlen(s2);
 if (!l2)
  return s1;

 l1 = strlen(s1);

 while (l1 >= l2)
 {
  l1--;
  if (!memcmp(s1,s2,l2))
   return s1;
  s1++;
 }

 return ((void*)0);
}
