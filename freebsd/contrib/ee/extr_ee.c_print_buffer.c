
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int com_win ;
 int command (char*) ;
 char* print_command ;
 int printer_msg_str ;
 int sprintf (char*,char*,char*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,int ,char*) ;
 int wrefresh (int ) ;

void
print_buffer()
{
 char buffer[256];

 sprintf(buffer, ">!%s", print_command);
 wmove(com_win, 0, 0);
 wclrtoeol(com_win);
 wprintw(com_win, printer_msg_str, print_command);
 wrefresh(com_win);
 command(buffer);
}
