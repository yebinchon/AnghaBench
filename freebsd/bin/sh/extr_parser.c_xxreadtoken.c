
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BASESYNTAX ;

 int RETURN (int ) ;
 int TAND ;
 int TBACKGND ;
 int TENDCASE ;
 int TEOF ;
 int TFALLTHRU ;
 int TLP ;
 int TNL ;
 int TOR ;
 int TPIPE ;
 int TRP ;
 int TSEMI ;
 scalar_t__ doprompt ;
 int lasttoken ;
 scalar_t__ needprompt ;
 char pgetc () ;
 char pgetc_linecont () ;
 int pgetc_macro () ;
 int plinno ;
 int pungetc () ;
 int readtoken1 (int,int ,char*,int ) ;
 int setprompt (int) ;
 int startlinno ;
 scalar_t__ tokpushback ;

__attribute__((used)) static int
xxreadtoken(void)
{
 int c;

 if (tokpushback) {
  tokpushback = 0;
  return lasttoken;
 }
 if (needprompt) {
  setprompt(2);
  needprompt = 0;
 }
 startlinno = plinno;
 for (;;) {
  c = pgetc_macro();
  switch (c) {
  case ' ': case '\t':
   continue;
  case '#':
   while ((c = pgetc()) != '\n' && c != 128);
   pungetc();
   continue;
  case '\\':
   if (pgetc() == '\n') {
    startlinno = ++plinno;
    if (doprompt)
     setprompt(2);
    else
     setprompt(0);
    continue;
   }
   pungetc();

  default:
   return readtoken1(c, BASESYNTAX, (char *)((void*)0), 0);
  case '\n':
   plinno++;
   needprompt = doprompt;
   RETURN(TNL);
  case 128:
   RETURN(TEOF);
  case '&':
   if (pgetc_linecont() == '&')
    RETURN(TAND);
   pungetc();
   RETURN(TBACKGND);
  case '|':
   if (pgetc_linecont() == '|')
    RETURN(TOR);
   pungetc();
   RETURN(TPIPE);
  case ';':
   c = pgetc_linecont();
   if (c == ';')
    RETURN(TENDCASE);
   else if (c == '&')
    RETURN(TFALLTHRU);
   pungetc();
   RETURN(TSEMI);
  case '(':
   RETURN(TLP);
  case ')':
   RETURN(TRP);
  }
 }

}
