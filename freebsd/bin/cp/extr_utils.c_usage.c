
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{

 (void)fprintf(stderr, "%s\n%s\n",
     "usage: cp [-R [-H | -L | -P]] [-f | -i | -n] [-alpsvx] "
     "source_file target_file",
     "       cp [-R [-H | -L | -P]] [-f | -i | -n] [-alpsvx] "
     "source_file ... "
     "target_directory");
 exit(EX_USAGE);
}
