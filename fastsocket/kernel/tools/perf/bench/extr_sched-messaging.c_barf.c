
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void barf(const char *msg)
{
 fprintf(stderr, "%s (error: %s)\n", msg, strerror(errno));
 exit(1);
}
