
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELFTC_GETPROGNAME () ;
 int EXIT_FAILURE ;
 char* STRIP_USAGE_MESSAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static void
strip_usage(void)
{
 (void) fprintf(stderr, STRIP_USAGE_MESSAGE, ELFTC_GETPROGNAME());
 exit(EXIT_FAILURE);
}
