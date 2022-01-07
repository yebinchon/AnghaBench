
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VERSION ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;

void usage (void)
{
 fprintf (stderr, "%s ver. %s\n", progname, VERSION);
 fprintf (stderr, "usage:  %s filename pattern_bytes\n",
   progname);
 fprintf (stderr, "        [prints location of pattern_bytes in file]\n");
 exit (1);
}
