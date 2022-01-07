
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMANDS ;
 int CONTROL_KEYS ;
 int TRUE ;
 int com_win ;
 int command (char*) ;
 int command_str ;
 int commands ;
 int free (char*) ;
 char* get_string (int ,int ) ;
 scalar_t__ horiz_offset ;
 int info_type ;
 int non_unique_cmd_msg ;
 int paint_info_win () ;
 scalar_t__ scr_horz ;
 int scr_vert ;
 int text_win ;
 int unique_test (char*,int ) ;
 int unkn_cmd_str ;
 int werase (int ) ;
 int wmove (int ,int ,scalar_t__) ;
 int wprintw (int ,int ,...) ;
 int wrefresh (int ) ;

void
command_prompt()
{
 char *cmd_str;
 int result;

 info_type = COMMANDS;
 paint_info_win();
 cmd_str = get_string(command_str, TRUE);
 if ((result = unique_test(cmd_str, commands)) != 1)
 {
  werase(com_win);
  wmove(com_win, 0, 0);
  if (result == 0)
   wprintw(com_win, unkn_cmd_str, cmd_str);
  else
   wprintw(com_win, non_unique_cmd_msg);

  wrefresh(com_win);

  info_type = CONTROL_KEYS;
  paint_info_win();

  if (cmd_str != ((void*)0))
   free(cmd_str);
  return;
 }
 command(cmd_str);
 wrefresh(com_win);
 wmove(text_win, scr_vert, (scr_horz - horiz_offset));
 info_type = CONTROL_KEYS;
 paint_info_win();
 if (cmd_str != ((void*)0))
  free(cmd_str);
}
