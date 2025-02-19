
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* BASESYNTAX ;
 scalar_t__ CCTL ;
 char CTLESC ;
 char CTLQUOTEMARK ;

__attribute__((used)) static int
noexpand(char *text)
{
 char *p;
 char c;

 p = text;
 while ((c = *p++) != '\0') {
  if ( c == CTLQUOTEMARK)
   continue;
  if (c == CTLESC)
   p++;
  else if (BASESYNTAX[(int)c] == CCTL)
   return 0;
 }
 return 1;
}
