
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEOF ;
 int doprompt ;
 int needprompt ;
 int pgetc () ;
 int plinno ;
 int pungetc () ;
 int pushstring (char const*,int,int *) ;

__attribute__((used)) static int
checkend(int c, const char *eofmark, int striptabs)
{
 if (striptabs) {
  while (c == '\t')
   c = pgetc();
 }
 if (c == *eofmark) {
  int c2;
  const char *q;

  for (q = eofmark + 1; c2 = pgetc(), *q != '\0' && c2 == *q; q++)
   ;
  if ((c2 == PEOF || c2 == '\n') && *q == '\0') {
   c = PEOF;
   if (c2 == '\n') {
    plinno++;
    needprompt = doprompt;
   }
  } else {
   pungetc();
   pushstring(eofmark + 1, q - (eofmark + 1), ((void*)0));
  }
 } else if (c == '\n' && *eofmark == '\0') {
  c = PEOF;
  plinno++;
  needprompt = doprompt;
 }
 return (c);
}
