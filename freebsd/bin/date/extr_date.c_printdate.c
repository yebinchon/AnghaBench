
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ fflush (int ) ;
 int printf (char*,char const*) ;
 int stdout ;

__attribute__((used)) static void
printdate(const char *buf)
{
 (void)printf("%s\n", buf);
 if (fflush(stdout))
  err(1, "stdout");
 exit(EXIT_SUCCESS);
}
