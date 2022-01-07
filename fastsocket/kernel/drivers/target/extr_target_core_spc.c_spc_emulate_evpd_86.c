
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 scalar_t__ spc_check_dev_wce (struct se_device*) ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_86(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;

 buf[3] = 0x3c;

 buf[5] = 0x07;


 if (spc_check_dev_wce(dev))
  buf[6] = 0x01;
 return 0;
}
