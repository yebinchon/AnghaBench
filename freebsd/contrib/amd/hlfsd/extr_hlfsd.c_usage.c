
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* am_get_progname () ;
 int dbg_opt ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int show_opts (char,int ) ;
 int stderr ;
 int xlog_opt ;

__attribute__((used)) static void
usage(void)
{
  fprintf(stderr,
   "Usage: %s [-Cfhnpv] [-a altdir] [-c cache-interval] [-g group]\n",
   am_get_progname());
  fprintf(stderr, "\t[-i interval] [-l logfile] [-o mntopts] [-P passwdfile]\n");
  show_opts('x', xlog_opt);



  fprintf(stderr, "\t[dir_name [subdir]]\n");
  exit(2);
}
