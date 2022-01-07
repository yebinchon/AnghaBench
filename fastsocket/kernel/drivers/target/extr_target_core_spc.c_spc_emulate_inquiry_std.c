
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_lun {int lun_sep; } ;
struct TYPE_4__ {char* model; char* revision; } ;
struct se_device {TYPE_2__ t10_wwn; TYPE_1__* transport; } ;
struct se_cmd {struct se_device* se_dev; struct se_lun* se_lun; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {scalar_t__ (* get_device_type ) (struct se_device*) ;} ;


 scalar_t__ TYPE_TAPE ;
 int snprintf (unsigned char*,int,char*,...) ;
 int spc_fill_alua_data (int ,unsigned char*) ;
 scalar_t__ stub1 (struct se_device*) ;

sense_reason_t
spc_emulate_inquiry_std(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_lun *lun = cmd->se_lun;
 struct se_device *dev = cmd->se_dev;


 if (dev->transport->get_device_type(dev) == TYPE_TAPE)
  buf[1] = 0x80;

 buf[2] = 0x05;
 buf[3] = 2;




 spc_fill_alua_data(lun->lun_sep, buf);

 buf[7] = 0x2;

 snprintf(&buf[8], 8, "LIO-ORG");
 snprintf(&buf[16], 16, "%s", dev->t10_wwn.model);
 snprintf(&buf[32], 4, "%s", dev->t10_wwn.revision);
 buf[4] = 31;

 return 0;
}
