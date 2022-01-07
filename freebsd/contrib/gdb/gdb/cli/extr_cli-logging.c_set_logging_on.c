
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_redirections (int) ;
 int logging_filename ;
 int xfree (int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
set_logging_on (char *args, int from_tty)
{
  char *rest = args;
  if (rest && *rest)
    {
      xfree (logging_filename);
      logging_filename = xstrdup (rest);
    }
  handle_redirections (from_tty);
}
