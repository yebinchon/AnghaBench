
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ethernet ;
 int monitor_expect (char*,char*,int) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_open (char*,int *,int) ;
 int monitor_printf (char*) ;
 int monitor_printf_noecho (char*) ;
 int r3900_cmds ;
 char** r3900_inits ;
 int * strstr (char*,char*) ;

__attribute__((used)) static void
r3900_open (char *args, int from_tty)
{
  char buf[64];
  int i;

  monitor_open (args, &r3900_cmds, from_tty);




  monitor_printf_noecho ("\r\r");
  for (i = 0; r3900_inits[i] != ((void*)0); i++)
    {
      monitor_printf (r3900_inits[i]);
      monitor_expect_prompt (((void*)0), 0);
    }





  ethernet = 0;
  monitor_printf ("v\r");
  if (monitor_expect ("console device :", ((void*)0), 0) != -1)
    if (monitor_expect ("\n", buf, sizeof (buf)) != -1)
      if (strstr (buf, "ethernet") != ((void*)0))
 ethernet = 1;
  monitor_expect_prompt (((void*)0), 0);
}
