
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;
struct stackmark {int dummy; } ;


 int Iflag ;
 union node* NEOF ;
 int SHOWJOBS_DEFAULT ;
 scalar_t__ SKIPRETURN ;
 int TRACE (char*) ;
 int chkmail (int ) ;
 int dotrap () ;
 scalar_t__ evalskip ;
 int evaltree (union node*,int ) ;
 int flushout (int *) ;
 scalar_t__ iflag ;
 int job_warning ;
 scalar_t__ nflag ;
 int out2fmt_flush (char*) ;
 int output ;
 union node* parsecmd (int) ;
 scalar_t__ pendingsig ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;
 int showjobs (int,int ) ;
 int stoppedjobs () ;

__attribute__((used)) static void
cmdloop(int top)
{
 union node *n;
 struct stackmark smark;
 int inter;
 int numeof = 0;

 TRACE(("cmdloop(%d) called\n", top));
 setstackmark(&smark);
 for (;;) {
  if (pendingsig)
   dotrap();
  inter = 0;
  if (iflag && top) {
   inter++;
   showjobs(1, SHOWJOBS_DEFAULT);
   chkmail(0);
   flushout(&output);
  }
  n = parsecmd(inter);

  if (n == NEOF) {
   if (!top || numeof >= 50)
    break;
   if (!stoppedjobs()) {
    if (!Iflag)
     break;
    out2fmt_flush("\nUse \"exit\" to leave shell.\n");
   }
   numeof++;
  } else if (n != ((void*)0) && nflag == 0) {
   job_warning = (job_warning == 2) ? 1 : 0;
   numeof = 0;
   evaltree(n, 0);
  }
  popstackmark(&smark);
  setstackmark(&smark);
  if (evalskip != 0) {
   if (evalskip == SKIPRETURN)
    evalskip = 0;
   break;
  }
 }
 popstackmark(&smark);
}
