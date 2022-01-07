
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {int alua_nonop_delay; int se_cmd_flags; } ;


 int SCF_ALUA_NON_OPTIMIZED ;

__attribute__((used)) static inline int core_alua_state_nonoptimized(
 struct se_cmd *cmd,
 unsigned char *cdb,
 int nonop_delay_msecs,
 u8 *alua_ascq)
{





 cmd->se_cmd_flags |= SCF_ALUA_NON_OPTIMIZED;
 cmd->alua_nonop_delay = nonop_delay_msecs;
 return 0;
}
