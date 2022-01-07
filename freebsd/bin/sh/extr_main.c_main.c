
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stackmark {int dummy; } ;
struct TYPE_3__ {int loc; } ;


 int EV_EXIT ;
 scalar_t__ EXEXIT ;
 scalar_t__ EXINT ;
 int FORCEINTON ;
 int INTOFF ;
 int INTON ;
 int LC_ALL ;
 int chkmail (int) ;
 int cmdloop (int) ;
 int evalstring (int *,int ) ;
 scalar_t__ exception ;
 int exitshell (int ) ;
 int exitstatus ;
 int getpid () ;
 TYPE_1__* handler ;
 scalar_t__ iflag ;
 int initcharset () ;
 int initvar () ;
 char* lookupvar (char*) ;
 TYPE_1__ main_handler ;
 int * minusc ;
 int opentrace () ;
 int out2fmt_flush (char*) ;
 int popstackmark (struct stackmark*) ;
 scalar_t__ privileged ;
 int procargs (int,char**) ;
 int pwd_init (scalar_t__) ;
 int read_profile (char*) ;
 int reset () ;
 int rootpid ;
 int rootshell ;
 scalar_t__ setjmp (int ) ;
 int setlocale (int ,char*) ;
 int setstackmark (struct stackmark*) ;
 scalar_t__ sflag ;
 int trargs (char**) ;
 int trputs (char*) ;

int
main(int argc, char *argv[])
{
 struct stackmark smark, smark2;
 volatile int state;
 char *shinit;

 (void) setlocale(LC_ALL, "");
 initcharset();
 state = 0;
 if (setjmp(main_handler.loc)) {
  if (state == 0 || iflag == 0 || ! rootshell ||
      exception == EXEXIT)
   exitshell(exitstatus);
  reset();
  if (exception == EXINT)
   out2fmt_flush("\n");
  popstackmark(&smark);
  FORCEINTON;
  if (state == 1)
   goto state1;
  else if (state == 2)
   goto state2;
  else if (state == 3)
   goto state3;
  else
   goto state4;
 }
 handler = &main_handler;




 rootpid = getpid();
 rootshell = 1;
 INTOFF;
 initvar();
 setstackmark(&smark);
 setstackmark(&smark2);
 procargs(argc, argv);
 pwd_init(iflag);
 INTON;
 if (iflag)
  chkmail(1);
 if (argv[0] && argv[0][0] == '-') {
  state = 1;
  read_profile("/etc/profile");
state1:
  state = 2;
  if (privileged == 0)
   read_profile("${HOME-}/.profile");
  else
   read_profile("/etc/suid_profile");
 }
state2:
 state = 3;
 if (!privileged && iflag) {
  if ((shinit = lookupvar("ENV")) != ((void*)0) && *shinit != '\0') {
   state = 3;
   read_profile(shinit);
  }
 }
state3:
 state = 4;
 popstackmark(&smark2);
 if (minusc) {
  evalstring(minusc, sflag ? 0 : EV_EXIT);
 }
state4:
 if (sflag || minusc == ((void*)0)) {
  cmdloop(1);
 }
 exitshell(exitstatus);

 return 0;
}
