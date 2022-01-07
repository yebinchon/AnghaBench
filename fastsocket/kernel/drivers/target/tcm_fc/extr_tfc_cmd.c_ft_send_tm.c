
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_lun {int dummy; } ;
struct ft_cmd {int * ft_sense_buffer; TYPE_1__* sess; int se_cmd; int req_frame; } ;
struct fcp_cmnd {int fc_tm_flags; int fc_lun; } ;
struct TYPE_2__ {int se_sess; } ;


 int FCP_CMND_FIELDS_INVALID ;



 int FCP_TMF_FAILED ;


 int GFP_KERNEL ;
 int TMR_ABORT_TASK_SET ;
 int TMR_CLEAR_ACA ;
 int TMR_CLEAR_TASK_SET ;
 int TMR_LUN_RESET ;
 int TMR_TARGET_WARM_RESET ;
 struct fcp_cmnd* fc_frame_payload_get (int ,int) ;
 int ft_send_resp_code_and_free (struct ft_cmd*,int ) ;
 int pr_debug (char*,int) ;
 int scsilun_to_int (struct scsi_lun*) ;
 int target_submit_tmr (int *,int ,int *,int ,struct ft_cmd*,int ,int ,int ,int ) ;

__attribute__((used)) static void ft_send_tm(struct ft_cmd *cmd)
{
 struct fcp_cmnd *fcp;
 int rc;
 u8 tm_func;

 fcp = fc_frame_payload_get(cmd->req_frame, sizeof(*fcp));

 switch (fcp->fc_tm_flags) {
 case 129:
  tm_func = TMR_LUN_RESET;
  break;
 case 128:
  tm_func = TMR_TARGET_WARM_RESET;
  break;
 case 130:
  tm_func = TMR_CLEAR_TASK_SET;
  break;
 case 132:
  tm_func = TMR_ABORT_TASK_SET;
  break;
 case 131:
  tm_func = TMR_CLEAR_ACA;
  break;
 default:




  pr_debug("invalid FCP tm_flags %x\n", fcp->fc_tm_flags);
  ft_send_resp_code_and_free(cmd, FCP_CMND_FIELDS_INVALID);
  return;
 }


 rc = target_submit_tmr(&cmd->se_cmd, cmd->sess->se_sess,
  &cmd->ft_sense_buffer[0], scsilun_to_int((struct scsi_lun *)&fcp->fc_lun),
  cmd, tm_func, GFP_KERNEL, 0, 0);
 if (rc < 0)
  ft_send_resp_code_and_free(cmd, FCP_TMF_FAILED);
}
