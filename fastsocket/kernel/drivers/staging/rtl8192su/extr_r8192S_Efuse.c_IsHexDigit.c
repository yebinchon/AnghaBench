
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

bool IsHexDigit( char chTmp)
{
 if( (chTmp >= '0' && chTmp <= '9') ||
  (chTmp >= 'a' && chTmp <= 'f') ||
  (chTmp >= 'A' && chTmp <= 'F') )
 {
  return TRUE;
 }
 else
 {
  return FALSE;
 }
}
