
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMMANDS ;
 scalar_t__ CONTROL_KEYS ;
 int * command_strings ;
 int * control_keys ;
 int * emacs_control_keys ;
 scalar_t__ emacs_keys_mode ;
 scalar_t__ info_type ;
 int info_win ;
 int info_window ;
 int nohighlight ;
 int separator ;
 int waddstr (int ,int ) ;
 int wclrtoeol (int ) ;
 int werase (int ) ;
 int wmove (int ,int,int ) ;
 int wrefresh (int ) ;
 int wstandend (int ) ;
 int wstandout (int ) ;

void
paint_info_win()
{
 int counter;

 if (!info_window)
  return;

 werase(info_win);
 for (counter = 0; counter < 5; counter++)
 {
  wmove(info_win, counter, 0);
  wclrtoeol(info_win);
  if (info_type == CONTROL_KEYS)
   waddstr(info_win, (emacs_keys_mode) ?
     emacs_control_keys[counter] : control_keys[counter]);
  else if (info_type == COMMANDS)
   waddstr(info_win, command_strings[counter]);
 }
 wmove(info_win, 5, 0);
 if (!nohighlight)
  wstandout(info_win);
 waddstr(info_win, separator);
 wstandend(info_win);
 wrefresh(info_win);
}
