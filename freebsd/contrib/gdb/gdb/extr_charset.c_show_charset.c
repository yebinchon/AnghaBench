
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_host_charset ;
 scalar_t__ current_target_charset ;
 int host_charset () ;
 int printf_filtered (char*,int ) ;
 int target_charset () ;

__attribute__((used)) static void
show_charset (char *arg, int from_tty)
{
  if (current_host_charset == current_target_charset)
    {
      printf_filtered ("The current host and target character set is `%s'.\n",
                       host_charset ());
    }
  else
    {
      printf_filtered ("The current host character set is `%s'.\n",
                       host_charset ());
      printf_filtered ("The current target character set is `%s'.\n",
                       target_charset ());
    }
}
