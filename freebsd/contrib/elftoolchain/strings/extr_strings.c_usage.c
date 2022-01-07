
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELFTC_GETPROGNAME () ;
 int EXIT_FAILURE ;
 char* USAGE_MESSAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, USAGE_MESSAGE, ELFTC_GETPROGNAME());
 exit(EXIT_FAILURE);
}
