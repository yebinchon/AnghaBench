
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int el ;
 int flushout (int ) ;
 int getprompt (int *) ;
 int out2 ;
 int out2str (int ) ;
 int whichprompt ;

__attribute__((used)) static void
setprompt(int which)
{
 whichprompt = which;
 if (which == 0)
  return;


 if (!el)

 {
  out2str(getprompt(((void*)0)));
  flushout(out2);
 }
}
