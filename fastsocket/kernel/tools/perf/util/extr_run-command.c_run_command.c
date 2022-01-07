
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;


 int finish_command (struct child_process*) ;
 int start_command (struct child_process*) ;

int run_command(struct child_process *cmd)
{
 int code = start_command(cmd);
 if (code)
  return code;
 return finish_command(cmd);
}
