
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 char* _ (char*) ;
 int errno ;
 int error (int ,int ,char*,char*) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int stdout ;

__attribute__((used)) static void
check_stdout (void)
{
  if (ferror (stdout))
    error (EXIT_TROUBLE, 0, "%s", _("write failed"));
  else if (fclose (stdout) != 0)
    error (EXIT_TROUBLE, errno, "%s", _("standard output"));
}
