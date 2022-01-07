
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; } ;


 int SCF_SCSI_TMR_CDB ;
 int transport_generic_free_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static int tcm_loop_check_stop_free(struct se_cmd *se_cmd)
{





 if (se_cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)
  return 0;




 transport_generic_free_cmd(se_cmd, 0);
 return 1;
}
