
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_terminal_info (char*,int) ;

void
term_info (char *arg, int from_tty)
{
  target_terminal_info (arg, from_tty);
}
