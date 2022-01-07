
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {char const** argv; int no_stdin; int perf_cmd; int stdout_to_stderr; } ;


 int RUN_COMMAND_NO_STDIN ;
 int RUN_COMMAND_STDOUT_TO_STDERR ;
 int RUN_PERF_CMD ;
 int memset (struct child_process*,int ,int) ;

__attribute__((used)) static void prepare_run_command_v_opt(struct child_process *cmd,
          const char **argv,
          int opt)
{
 memset(cmd, 0, sizeof(*cmd));
 cmd->argv = argv;
 cmd->no_stdin = opt & RUN_COMMAND_NO_STDIN ? 1 : 0;
 cmd->perf_cmd = opt & RUN_PERF_CMD ? 1 : 0;
 cmd->stdout_to_stderr = opt & RUN_COMMAND_STDOUT_TO_STDERR ? 1 : 0;
}
