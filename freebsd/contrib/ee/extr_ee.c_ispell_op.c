
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int check_fp () ;
 int close (int) ;
 int com_win ;
 int create_file_fail_msg ;
 int delete_text () ;
 int mkstemp (char*) ;
 int recv_file ;
 scalar_t__ restrict_mode () ;
 int sh_command (char*) ;
 int sprintf (char*,char*,...) ;
 char* tmp_file ;
 int unlink (char*) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,int ,char*) ;
 int wrefresh (int ) ;
 scalar_t__ write_file (char*,int ) ;

void
ispell_op()
{
 char template[128], *name;
 char string[256];
 int fd;

 if (restrict_mode())
 {
  return;
 }
 (void)sprintf(template, "/tmp/ee.XXXXXXXX");
 fd = mkstemp(template);
 if (fd < 0) {
  wmove(com_win, 0, 0);
  wprintw(com_win, create_file_fail_msg, name);
  wrefresh(com_win);
  return;
 }
 close(fd);
 if (write_file(name, 0))
 {
  sprintf(string, "ispell %s", name);
  sh_command(string);
  delete_text();
  tmp_file = name;
  recv_file = TRUE;
  check_fp();
  unlink(name);
 }
}
