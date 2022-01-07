
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ess_command {int cmd; int data; } ;
struct TYPE_4__ {int channels; scalar_t__ bits; } ;
typedef TYPE_1__ sb_devc ;


 scalar_t__ AFMT_U8 ;
 int ess_write (TYPE_1__*,int,int ) ;

__attribute__((used)) static void ess_exec_commands
 (sb_devc *devc, struct ess_command *cmdtab[])
{
 struct ess_command *cmd;

 cmd = cmdtab [ ((devc->channels != 1) << 1) + (devc->bits != AFMT_U8) ];

 while (cmd->cmd != -1) {
  ess_write (devc, cmd->cmd, cmd->data);
  cmd++;
 }
}
