
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_NOWAIT ;
 int LOG_PID ;
 scalar_t__ NSTREQ (char*,char*,int ) ;
 scalar_t__ STREQ (char*,char*) ;
 int XLOG_INFO ;
 int XLOG_USER ;
 int XLOG_WARNING ;
 int __IGNORE (int ) ;
 int am_get_progname () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int get_syslog_facility (char*) ;
 int * logfp ;
 int openlog (int ,int,int ) ;
 int plog (int ,char*,...) ;
 int * stderr ;
 int strlen (char*) ;
 int syslogging ;
 int truncate (char*,int ) ;
 int umask (int) ;

int
switch_to_logfile(char *logfile, int old_umask, int truncate_log)
{
  FILE *new_logfp = stderr;

  if (logfile) {




    if (STREQ(logfile, "/dev/stderr"))
      new_logfp = stderr;
    else if (NSTREQ(logfile, "syslog", strlen("syslog"))) {
      plog(XLOG_WARNING, "syslog option not supported, logging unchanged");


    } else {
      (void) umask(old_umask);
      if (truncate_log)
 __IGNORE(truncate(logfile, 0));
      new_logfp = fopen(logfile, "a");
      umask(0);
    }
  }




  if (!new_logfp && logfile) {
    plog(XLOG_USER, "%s: Can't open logfile: %m", logfile);
    return 1;
  }




  if (logfp && logfp != stderr)
    (void) fclose(logfp);
  logfp = new_logfp;

  if (logfile)
    plog(XLOG_INFO, "switched to logfile \"%s\"", logfile);
  else
    plog(XLOG_INFO, "no logfile defined; using stderr");

  return 0;
}
