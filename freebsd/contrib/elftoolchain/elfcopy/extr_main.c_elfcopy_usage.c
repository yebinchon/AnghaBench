
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ELFCOPY_USAGE_MESSAGE ;
 int ELFTC_GETPROGNAME () ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static void
elfcopy_usage(void)
{
 (void) fprintf(stderr, ELFCOPY_USAGE_MESSAGE, ELFTC_GETPROGNAME());
 exit(EXIT_FAILURE);
}
