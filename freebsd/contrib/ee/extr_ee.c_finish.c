
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int clear_com_win ;
 int com_win ;
 int file_not_saved_msg ;
 int free (char*) ;
 char* get_string (int ,int ) ;
 char* in_file_name ;
 int quit (int ) ;
 char* resolve_name (char*) ;
 int save_file_name_prompt ;
 int text_changes ;
 char* tmp_file ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,int ) ;
 int wrefresh (int ) ;
 scalar_t__ write_file (char*,int) ;

void
finish()
{
 char *file_name = in_file_name;






 if ((file_name == ((void*)0)) || (*file_name == '\0'))
  file_name = get_string(save_file_name_prompt, TRUE);

 if ((file_name == ((void*)0)) || (*file_name == '\0'))
 {
  wmove(com_win, 0, 0);
  wprintw(com_win, file_not_saved_msg);
  wclrtoeol(com_win);
  wrefresh(com_win);
  clear_com_win = TRUE;
  return;
 }

 tmp_file = resolve_name(file_name);
 if (tmp_file != file_name)
 {
  free(file_name);
  file_name = tmp_file;
 }

 if (write_file(file_name, 1))
 {
  text_changes = FALSE;
  quit(0);
 }
}
