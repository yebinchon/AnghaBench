
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int fatal (char*) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int perror_with_exit (int ) ;
 int stdout ;

__attribute__((used)) static void
check_stdout (void)
{
  if (ferror (stdout))
    fatal ("write failed");
  else if (fclose (stdout) != 0)
    perror_with_exit (_("standard output"));
}
