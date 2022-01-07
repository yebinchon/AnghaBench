
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* BASESYNTAX ;
 scalar_t__ CCTL ;
 char const CTLESC ;
 char const CTLQUOTEEND ;
 char const CTLQUOTEMARK ;

__attribute__((used)) static int
mustexpandto(const char *argtext, const char *mask)
{
 for (;;) {
  if (*argtext == CTLQUOTEMARK || *argtext == CTLQUOTEEND) {
   argtext++;
   continue;
  }
  if (*argtext == CTLESC)
   argtext++;
  else if (BASESYNTAX[(int)*argtext] == CCTL)
   return (0);
  if (*argtext != *mask)
   return (0);
  if (*argtext == '\0')
   return (1);
  argtext++;
  mask++;
 }
}
