
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: setfacl [-R [-H | -L | -P]] [-bdhkn] "
     "[-a position entries] [-m entries] [-M file] "
     "[-x entries] [-X file] [file ...]\n");
 exit(1);
}
