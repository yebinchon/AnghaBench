
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 char* _ (char*) ;
 int error (int ,int,char*,char const*,int) ;
 int exiterr () ;

__attribute__((used)) static void
check_child_status (int werrno, int wstatus, int max_ok_status,
      char const *subsidiary_program)
{
  int status = (! werrno && WIFEXITED (wstatus)
  ? WEXITSTATUS (wstatus)
  : INT_MAX);

  if (max_ok_status < status)
    {
      error (0, werrno,
      _(status == 126
        ? "subsidiary program `%s' could not be invoked"
        : status == 127
        ? "subsidiary program `%s' not found"
        : status == INT_MAX
        ? "subsidiary program `%s' failed"
        : "subsidiary program `%s' failed (exit status %d)"),
      subsidiary_program, status);
      exiterr ();
    }
}
