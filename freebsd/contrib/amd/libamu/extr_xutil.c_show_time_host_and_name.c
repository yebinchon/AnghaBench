
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
typedef int nsecs ;


 int CLOCK_REALTIME ;
 int D_HRTIME ;
 char* am_get_hostname () ;
 int am_get_progname () ;
 scalar_t__ am_mypid ;
 scalar_t__ amuDebug (int ) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ clocktime (int *) ;
 char* ctime (scalar_t__*) ;
 int fprintf (int ,char*,char*,char*,char*,int ,long,char*) ;
 int logfp ;
 int xsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
show_time_host_and_name(int lvl)
{
  static time_t last_t = 0;
  static char *last_ctime = ((void*)0);
  time_t t;



  char nsecs[11];
  char *sev;

  nsecs[0] = '\0';
    t = clocktime(((void*)0));

  if (t != last_t) {
    last_ctime = ctime(&t);
    last_t = t;
  }

  switch (lvl) {
  case 133:
    sev = "fatal:";
    break;
  case 134:
    sev = "error:";
    break;
  case 129:
    sev = "user: ";
    break;
  case 128:
    sev = "warn: ";
    break;
  case 132:
    sev = "info: ";
    break;
  case 135:
    sev = "debug:";
    break;
  case 131:
    sev = "map:  ";
    break;
  case 130:
    sev = "stats:";
    break;
  default:
    sev = "hmm:  ";
    break;
  }
  fprintf(logfp, "%15.15s%s %s %s[%ld]/%s ",
   last_ctime + 4, nsecs, am_get_hostname(),
   am_get_progname(),
   (long) am_mypid,
   sev);
}
