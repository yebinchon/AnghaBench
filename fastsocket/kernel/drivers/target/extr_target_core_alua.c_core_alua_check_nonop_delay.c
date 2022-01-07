
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; int alua_nonop_delay; } ;


 int SCF_ALUA_NON_OPTIMIZED ;
 scalar_t__ in_interrupt () ;
 int msleep_interruptible (int ) ;

int core_alua_check_nonop_delay(
 struct se_cmd *cmd)
{
 if (!(cmd->se_cmd_flags & SCF_ALUA_NON_OPTIMIZED))
  return 0;
 if (in_interrupt())
  return 0;




 if (!cmd->alua_nonop_delay)
  return 0;




 msleep_interruptible(cmd->alua_nonop_delay);
 return 0;
}
