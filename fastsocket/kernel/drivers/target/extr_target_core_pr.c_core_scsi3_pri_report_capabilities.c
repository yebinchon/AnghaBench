
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct t10_reservation {scalar_t__ pr_aptpl_active; } ;
struct se_device {struct t10_reservation t10_pr; } ;
struct se_cmd {int data_length; struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 int TCM_INVALID_CDB_FIELD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int pr_err (char*,int) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;

__attribute__((used)) static sense_reason_t
core_scsi3_pri_report_capabilities(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 struct t10_reservation *pr_tmpl = &dev->t10_pr;
 unsigned char *buf;
 u16 add_len = 8;

 if (cmd->data_length < 6) {
  pr_err("PRIN SA REPORT_CAPABILITIES SCSI Data Length:"
   " %u too small\n", cmd->data_length);
  return TCM_INVALID_CDB_FIELD;
 }

 buf = transport_kmap_data_sg(cmd);
 if (!buf)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 buf[0] = ((add_len << 8) & 0xff);
 buf[1] = (add_len & 0xff);
 buf[2] |= 0x10;
 buf[2] |= 0x08;
 buf[2] |= 0x04;
 buf[2] |= 0x01;




 buf[3] |= 0x80;



 buf[3] |= 0x10;



 if (pr_tmpl->pr_aptpl_active)
  buf[3] |= 0x01;



 buf[4] |= 0x80;
 buf[4] |= 0x40;
 buf[4] |= 0x20;
 buf[4] |= 0x08;
 buf[4] |= 0x02;
 buf[5] |= 0x01;

 transport_kunmap_data_sg(cmd);

 return 0;
}
