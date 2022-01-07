
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_ESC ;
 int LC_ALL ;
 int LOCALEDIR ;
 char* N_ (char*) ;
 int PACKAGE ;
 char* _ (char*) ;
 int bindtextdomain (int ,int ) ;
 int conf (int *) ;
 scalar_t__ conf_get_changed () ;
 int conf_get_configname () ;
 int conf_parse (char*) ;
 int conf_read (int *) ;
 int conf_write (int ) ;
 int dialog_clear () ;
 int dialog_yesno (int *,char*,int,int) ;
 int end_dialog (int,int) ;
 int filename ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int getyx (int ,int,int) ;
 scalar_t__ init_dialog (int *) ;
 int initscr () ;
 int printf (char*) ;
 int rootmenu ;
 int set_config_filename (int ) ;
 int setlocale (int ,char*) ;
 int single_menu_mode ;
 int stderr ;
 int stdscr ;
 int strcasecmp (char*,char*) ;
 int textdomain (int ) ;

int main(int ac, char **av)
{
 int saved_x, saved_y;
 char *mode;
 int res;

 setlocale(LC_ALL, "");
 bindtextdomain(PACKAGE, LOCALEDIR);
 textdomain(PACKAGE);

 conf_parse(av[1]);
 conf_read(((void*)0));

 mode = getenv("MENUCONFIG_MODE");
 if (mode) {
  if (!strcasecmp(mode, "single_menu"))
   single_menu_mode = 1;
 }

 initscr();

 getyx(stdscr, saved_y, saved_x);
 if (init_dialog(((void*)0))) {
  fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
  fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
  return 1;
 }

 set_config_filename(conf_get_configname());
 do {
  conf(&rootmenu);
  dialog_clear();
  if (conf_get_changed())
   res = dialog_yesno(((void*)0),
        _("Do you wish to save your "
          "new kernel configuration?\n"
          "<ESC><ESC> to continue."),
        6, 60);
  else
   res = -1;
 } while (res == KEY_ESC);
 end_dialog(saved_x, saved_y);

 switch (res) {
 case 0:
  if (conf_write(filename)) {
   fprintf(stderr, _("\n\n"
    "Error during writing of the kernel configuration.\n"
    "Your kernel configuration changes were NOT saved."
    "\n\n"));
   return 1;
  }
 case -1:
  printf(_("\n\n"
   "*** End of Linux kernel configuration.\n"
   "*** Execute 'make' to build the kernel or try 'make help'."
   "\n\n"));
  break;
 default:
  fprintf(stderr, _("\n\n"
   "Your kernel configuration changes were NOT saved."
   "\n\n"));
 }

 return 0;
}
