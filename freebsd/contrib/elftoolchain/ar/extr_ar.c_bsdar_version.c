
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ELFTC_GETPROGNAME () ;
 int EXIT_SUCCESS ;
 char* archive_version_string () ;
 char* elftc_version () ;
 int exit (int ) ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static void
bsdar_version(void)
{
 (void)printf("%s (%s, %s)\n", ELFTC_GETPROGNAME(), archive_version_string(),
     elftc_version());
 exit(EXIT_SUCCESS);
}
