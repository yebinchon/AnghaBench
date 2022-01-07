
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct se_cmd {unsigned char* sense_buffer; int se_cmd_flags; TYPE_1__* se_tfo; int scsi_sense_length; int scsi_status; int t_state_lock; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int (* queue_status ) (struct se_cmd*) ;} ;


 unsigned char ABORTED_COMMAND ;
 unsigned char DATA_PROTECT ;
 unsigned char ILLEGAL_REQUEST ;
 unsigned char NOT_READY ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCF_EMULATED_TASK_SENSE ;
 int SCF_SENT_CHECK_CONDITION ;
 size_t SPC_ADD_SENSE_LEN_OFFSET ;
 size_t SPC_ASCQ_KEY_OFFSET ;
 size_t SPC_ASC_KEY_OFFSET ;
 size_t SPC_SENSE_KEY_OFFSET ;
 int TRANSPORT_SENSE_BUFFER ;
 unsigned char UNIT_ATTENTION ;
 int core_scsi3_ua_for_check_condition (struct se_cmd*,unsigned char*,unsigned char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_cmd*) ;
 int transport_get_sense_codes (struct se_cmd*,unsigned char*,unsigned char*) ;

int
transport_send_check_condition_and_sense(struct se_cmd *cmd,
  sense_reason_t reason, int from_transport)
{
 unsigned char *buffer = cmd->sense_buffer;
 unsigned long flags;
 u8 asc = 0, ascq = 0;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (cmd->se_cmd_flags & SCF_SENT_CHECK_CONDITION) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return 0;
 }
 cmd->se_cmd_flags |= SCF_SENT_CHECK_CONDITION;
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 if (!reason && from_transport)
  goto after_reason;

 if (!from_transport)
  cmd->se_cmd_flags |= SCF_EMULATED_TASK_SENSE;





 switch (reason) {
 case 136:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = NOT_READY;

  buffer[SPC_ASC_KEY_OFFSET] = 0;
  buffer[SPC_ASCQ_KEY_OFFSET] = 0;
  break;
 case 137:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x25;
  break;
 case 129:
 case 134:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x20;
  break;
 case 130:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x24;
  break;
 case 144:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ABORTED_COMMAND;

  buffer[SPC_ASC_KEY_OFFSET] = 0x29;
  buffer[SPC_ASCQ_KEY_OFFSET] = 0x03;
  break;
 case 141:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ABORTED_COMMAND;

  buffer[SPC_ASC_KEY_OFFSET] = 0x0c;

  buffer[SPC_ASCQ_KEY_OFFSET] = 0x0d;
  break;
 case 140:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x24;
  break;
 case 139:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x26;
  break;
 case 135:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x1a;
  break;
 case 131:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ABORTED_COMMAND;

  buffer[SPC_ASC_KEY_OFFSET] = 0x0c;

  buffer[SPC_ASCQ_KEY_OFFSET] = 0x0c;
  break;
 case 133:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ABORTED_COMMAND;

  buffer[SPC_ASC_KEY_OFFSET] = 0x47;

  buffer[SPC_ASCQ_KEY_OFFSET] = 0x05;
  break;
 case 132:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ABORTED_COMMAND;

  buffer[SPC_ASC_KEY_OFFSET] = 0x11;

  buffer[SPC_ASCQ_KEY_OFFSET] = 0x13;
  break;
 case 128:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = DATA_PROTECT;

  buffer[SPC_ASC_KEY_OFFSET] = 0x27;
  break;
 case 145:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = ILLEGAL_REQUEST;

  buffer[SPC_ASC_KEY_OFFSET] = 0x21;
  break;
 case 142:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = UNIT_ATTENTION;
  core_scsi3_ua_for_check_condition(cmd, &asc, &ascq);
  buffer[SPC_ASC_KEY_OFFSET] = asc;
  buffer[SPC_ASCQ_KEY_OFFSET] = ascq;
  break;
 case 143:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;

  buffer[SPC_SENSE_KEY_OFFSET] = NOT_READY;
  transport_get_sense_codes(cmd, &asc, &ascq);
  buffer[SPC_ASC_KEY_OFFSET] = asc;
  buffer[SPC_ASCQ_KEY_OFFSET] = ascq;
  break;
 case 138:
 default:

  buffer[0] = 0x70;
  buffer[SPC_ADD_SENSE_LEN_OFFSET] = 10;






  buffer[SPC_SENSE_KEY_OFFSET] = NOT_READY;

  buffer[SPC_ASC_KEY_OFFSET] = 0x08;
  break;
 }



 cmd->scsi_status = SAM_STAT_CHECK_CONDITION;




 cmd->scsi_sense_length = TRANSPORT_SENSE_BUFFER;

after_reason:
 return cmd->se_tfo->queue_status(cmd);
}
