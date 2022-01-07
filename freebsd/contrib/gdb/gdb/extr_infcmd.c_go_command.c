
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GO_USAGE ;
 int jump_command (char*,int) ;
 int printf_filtered (int ) ;
 int tbreak_command (char*,int) ;

__attribute__((used)) static void
go_command (char *line_no, int from_tty)
{
  if (line_no == (char *) ((void*)0) || !*line_no)
    printf_filtered (GO_USAGE);
  else
    {
      tbreak_command (line_no, from_tty);
      jump_command (line_no, from_tty);
    }
}
