
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* am_get_progname () ;
 scalar_t__ debug_option (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int usage ;

__attribute__((used)) static int
gopt_debug_options(const char *val)
{




  fprintf(stderr, "%s: not compiled with DEBUG option -- sorry.\n",
   am_get_progname());
  return 1;

}
