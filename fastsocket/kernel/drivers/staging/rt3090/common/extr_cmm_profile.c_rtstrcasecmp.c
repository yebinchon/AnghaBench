
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PSTRING ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strlen (char*) ;

BOOLEAN rtstrcasecmp(PSTRING s1, PSTRING s2)
{
 PSTRING p1 = s1, p2 = s2;

 if (strlen(s1) != strlen(s2))
  return FALSE;

 while(*p1 != '\0')
 {
  if((*p1 != *p2) && ((*p1 ^ *p2) != 0x20))
   return FALSE;
  p1++;
  p2++;
 }

 return TRUE;
}
