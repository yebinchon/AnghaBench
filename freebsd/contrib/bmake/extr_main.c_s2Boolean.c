
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int FALSE ;
 int TRUE ;

Boolean
s2Boolean(const char *s, Boolean bf)
{
    if (s) {
 switch(*s) {
 case '\0':
     break;
 case '0':
 case 'F':
 case 'f':
 case 'N':
 case 'n':
     bf = FALSE;
     break;
 case 'O':
 case 'o':
     switch (s[1]) {
     case 'F':
     case 'f':
  bf = FALSE;
  break;
     default:
  bf = TRUE;
  break;
     }
     break;
 default:
     bf = TRUE;
     break;
 }
    }
    return (bf);
}
