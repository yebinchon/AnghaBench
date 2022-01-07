
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ELFTC_GETPROGNAME () ;
 int EXIT_SUCCESS ;
 char* elftc_version () ;
 int exit (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_version(void)
{
 (void) printf("%s (%s)\n", ELFTC_GETPROGNAME(), elftc_version());
 exit(EXIT_SUCCESS);
}
