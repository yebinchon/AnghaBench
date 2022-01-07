
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int AtoH (char*,char*,int) ;
 int ETH_MAC_ADDR_STR_LEN ;
 int FALSE ;
 int TRUE ;
 int isxdigit (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

BOOLEAN rtstrmactohex(char *s1, char *s2)
{
 int i = 0;
 char *ptokS = s1, *ptokE = s1;

 if (strlen(s1) != ETH_MAC_ADDR_STR_LEN)
  return FALSE;

 while((*ptokS) != '\0')
 {
  if((ptokE = strchr(ptokS, ':')) != ((void*)0))
   *ptokE++ = '\0';
  if ((strlen(ptokS) != 2) || (!isxdigit(*ptokS)) || (!isxdigit(*(ptokS+1))))
   break;
  AtoH(ptokS, &s2[i++], 1);
  ptokS = ptokE;
  if (i == 6)
   break;
 }

 return ( i == 6 ? TRUE : FALSE);

}
