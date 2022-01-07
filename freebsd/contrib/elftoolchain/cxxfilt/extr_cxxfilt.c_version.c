
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ELFTC_GETPROGNAME () ;
 char* elftc_version () ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
version(void)
{
 fprintf(stderr, "%s (%s)\n", ELFTC_GETPROGNAME(), elftc_version());
 exit(0);
}
