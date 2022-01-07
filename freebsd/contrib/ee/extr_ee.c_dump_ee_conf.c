
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 char* AUTOFORMAT ;
 char* CASE ;
 char* EIGHTBIT ;
 char* EMACS_string ;
 char* EXPAND ;
 int Echo ;
 int FALSE ;
 char* HIGHLIGHT ;
 char* INFO ;
 char* MARGINS ;
 char* NOAUTOFORMAT ;
 char* NOCASE ;
 char* NOEIGHTBIT ;
 char* NOEMACS_string ;
 char* NOEXPAND ;
 char* NOHIGHLIGHT ;
 char* NOINFO ;
 char* NOMARGINS ;
 char* PRINTCOMMAND ;
 char* RIGHTMARGIN ;
 scalar_t__ auto_format ;
 scalar_t__ case_sen ;
 char* chinese_cmd ;
 int com_win ;
 scalar_t__ compare (char*,int ,int ) ;
 int conf_dump_err_msg ;
 int conf_dump_success_msg ;
 int conf_not_saved_msg ;
 int config_dump_menu ;
 scalar_t__ ee_chinese ;
 scalar_t__ eightbit ;
 scalar_t__ emacs_keys_mode ;
 scalar_t__ expand_tabs ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*,...) ;
 int free (char*) ;
 scalar_t__ info_window ;
 int init_strings ;
 int link (char*,char*) ;
 int menu_op (int ) ;
 char* nochinese_cmd ;
 scalar_t__ nohighlight ;
 scalar_t__ observ_margins ;
 char* print_command ;
 char* resolve_name (char*) ;
 scalar_t__ restrict_mode () ;
 int right_margin ;
 int sprintf (char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strlen (char*) ;
 int unique_test (char*,int ) ;
 int unlink (char*) ;
 int werase (int ) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,int ,...) ;
 int wrefresh (int ) ;

void
dump_ee_conf()
{
 FILE *init_file;
 FILE *old_init_file = ((void*)0);
 char *file_name = ".init.ee";
 char *home_dir = "~/.init.ee";
 char buffer[512];
 struct stat buf;
 char *string;
 int length;
 int option = 0;

 if (restrict_mode())
 {
  return;
 }

 option = menu_op(config_dump_menu);

 werase(com_win);
 wmove(com_win, 0, 0);

 if (option == 0)
 {
  wprintw(com_win, conf_not_saved_msg);
  wrefresh(com_win);
  return;
 }
 else if (option == 2)
  file_name = resolve_name(home_dir);





 if (stat(file_name, &buf) != -1)
 {
  sprintf(buffer, "%s.old", file_name);
  unlink(buffer);
  link(file_name, buffer);
  unlink(file_name);
  old_init_file = fopen(buffer, "r");
 }

 init_file = fopen(file_name, "w");
 if (init_file == ((void*)0))
 {
  wprintw(com_win, conf_dump_err_msg);
  wrefresh(com_win);
  return;
 }

 if (old_init_file != ((void*)0))
 {



  while ((string = fgets(buffer, 512, old_init_file)) != ((void*)0))
  {
   length = strlen(string);
   string[length - 1] = '\0';

   if (unique_test(string, init_strings) == 1)
   {
    if (compare(string, Echo, FALSE))
    {
     fprintf(init_file, "%s\n", string);
    }
   }
   else
    fprintf(init_file, "%s\n", string);
  }

  fclose(old_init_file);
 }

 fprintf(init_file, "%s\n", case_sen ? CASE : NOCASE);
 fprintf(init_file, "%s\n", expand_tabs ? EXPAND : NOEXPAND);
 fprintf(init_file, "%s\n", info_window ? INFO : NOINFO );
 fprintf(init_file, "%s\n", observ_margins ? MARGINS : NOMARGINS );
 fprintf(init_file, "%s\n", auto_format ? AUTOFORMAT : NOAUTOFORMAT );
 fprintf(init_file, "%s %s\n", PRINTCOMMAND, print_command);
 fprintf(init_file, "%s %d\n", RIGHTMARGIN, right_margin);
 fprintf(init_file, "%s\n", nohighlight ? NOHIGHLIGHT : HIGHLIGHT );
 fprintf(init_file, "%s\n", eightbit ? EIGHTBIT : NOEIGHTBIT );
 fprintf(init_file, "%s\n", emacs_keys_mode ? EMACS_string : NOEMACS_string );
 fprintf(init_file, "%s\n", ee_chinese ? chinese_cmd : nochinese_cmd );

 fclose(init_file);

 wprintw(com_win, conf_dump_success_msg, file_name);
 wrefresh(com_win);

 if ((option == 2) && (file_name != home_dir))
 {
  free(file_name);
 }
}
