
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,...) ;
 int error_no_arg (char*) ;
 int get_number (char**) ;
 int longest_to_int (int ) ;
 int parse_and_eval (char*) ;
 int printf_filtered (char*) ;
 int set_ignore_count (int,int ,int) ;
 int value_as_long (int ) ;

__attribute__((used)) static void
ignore_command (char *args, int from_tty)
{
  char *p = args;
  int num;

  if (p == 0)
    error_no_arg ("a breakpoint number");

  num = get_number (&p);
  if (num == 0)
    error ("bad breakpoint number: '%s'", args);
  if (*p == 0)
    error ("Second argument (specified ignore-count) is missing.");

  set_ignore_count (num,
      longest_to_int (value_as_long (parse_and_eval (p))),
      from_tty);
  if (from_tty)
    printf_filtered ("\n");
}
