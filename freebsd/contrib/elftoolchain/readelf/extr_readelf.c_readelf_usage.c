
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELFTC_GETPROGNAME () ;
 char* USAGE_MESSAGE ;
 int exit (int) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static void
readelf_usage(int status)
{
 fprintf(stderr, USAGE_MESSAGE, ELFTC_GETPROGNAME());
 exit(status);
}
