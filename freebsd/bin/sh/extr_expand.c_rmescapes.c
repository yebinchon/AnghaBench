
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CTLESC ;
 char CTLQUOTEEND ;
 char CTLQUOTEMARK ;

void
rmescapes(char *str)
{
 char *p, *q;

 p = str;
 while (*p != CTLESC && *p != CTLQUOTEMARK && *p != CTLQUOTEEND) {
  if (*p++ == '\0')
   return;
 }
 q = p;
 while (*p) {
  if (*p == CTLQUOTEMARK || *p == CTLQUOTEEND) {
   p++;
   continue;
  }
  if (*p == CTLESC)
   p++;
  *q++ = *p++;
 }
 *q = '\0';
}
