
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct TYPE_2__ {char* prompt; } ;


 TYPE_1__* current_monitor ;
 int error (char*) ;
 int fputs_unfiltered (char*,struct ui_file*) ;
 int * monitor_desc ;
 int monitor_expect_prompt (char*,int) ;
 int monitor_printf (char*,char*) ;

__attribute__((used)) static void
monitor_rcmd (char *command,
       struct ui_file *outbuf)
{
  char *p;
  int resp_len;
  char buf[1000];

  if (monitor_desc == ((void*)0))
    error ("monitor target not open.");

  p = current_monitor->prompt;




  monitor_printf ("%s\r", (command ? command : ""));

  resp_len = monitor_expect_prompt (buf, sizeof buf);

  fputs_unfiltered (buf, outbuf);
}
