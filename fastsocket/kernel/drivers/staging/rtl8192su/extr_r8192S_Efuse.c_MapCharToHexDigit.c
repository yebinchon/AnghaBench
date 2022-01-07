
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u32 ;



u32 MapCharToHexDigit(char chTmp)
{
 if(chTmp >= '0' && chTmp <= '9')
  return (chTmp - '0');
 else if(chTmp >= 'a' && chTmp <= 'f')
  return (10 + (chTmp - 'a'));
 else if(chTmp >= 'A' && chTmp <= 'F')
  return (10 + (chTmp - 'A'));
 else
  return 0;
}
