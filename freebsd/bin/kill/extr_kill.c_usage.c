
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void)fprintf(stderr, "%s\n%s\n%s\n%s\n",
  "usage: kill [-s signal_name] pid ...",
  "       kill -l [exit_status]",
  "       kill -signal_name pid ...",
  "       kill -signal_number pid ...");



 exit(2);

}
