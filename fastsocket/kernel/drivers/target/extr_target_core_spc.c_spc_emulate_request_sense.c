
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct se_cmd {unsigned char* t_task_cdb; int data_length; } ;
typedef int sense_reason_t ;
typedef int buf ;


 int GOOD ;
 unsigned char NO_SENSE ;
 int SE_SENSE_BUF ;
 size_t SPC_ASCQ_KEY_OFFSET ;
 size_t SPC_ASC_KEY_OFFSET ;
 size_t SPC_SENSE_KEY_OFFSET ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 unsigned char UNIT_ATTENTION ;
 int core_scsi3_ua_clear_for_request_sense (struct se_cmd*,unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int min_t (int ,int,int ) ;
 int pr_err (char*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;
 int u32 ;

__attribute__((used)) static sense_reason_t spc_emulate_request_sense(struct se_cmd *cmd)
{
 unsigned char *cdb = cmd->t_task_cdb;
 unsigned char *rbuf;
 u8 ua_asc = 0, ua_ascq = 0;
 unsigned char buf[SE_SENSE_BUF];

 memset(buf, 0, SE_SENSE_BUF);

 if (cdb[1] & 0x01) {
  pr_err("REQUEST_SENSE description emulation not"
   " supported\n");
  return TCM_INVALID_CDB_FIELD;
 }

 rbuf = transport_kmap_data_sg(cmd);
 if (!rbuf)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 if (!core_scsi3_ua_clear_for_request_sense(cmd, &ua_asc, &ua_ascq)) {



  buf[0] = 0x70;
  buf[SPC_SENSE_KEY_OFFSET] = UNIT_ATTENTION;




  buf[SPC_ASC_KEY_OFFSET] = ua_asc;
  buf[SPC_ASCQ_KEY_OFFSET] = ua_ascq;
  buf[7] = 0x0A;
 } else {



  buf[0] = 0x70;
  buf[SPC_SENSE_KEY_OFFSET] = NO_SENSE;




  buf[SPC_ASC_KEY_OFFSET] = 0x00;
  buf[7] = 0x0A;
 }

 memcpy(rbuf, buf, min_t(u32, sizeof(buf), cmd->data_length));
 transport_kunmap_data_sg(cmd);

 target_complete_cmd(cmd, GOOD);
 return 0;
}
