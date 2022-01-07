
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_cmd {TYPE_1__* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_5__ {unsigned char page; } ;
struct TYPE_4__ {int dev_flags; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DF_EMULATED_VPD_UNIT_SERIAL ;
 TYPE_2__* evpd_handlers ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_00(struct se_cmd *cmd, unsigned char *buf)
{
 int p;






 if (cmd->se_dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL) {
  buf[3] = ARRAY_SIZE(evpd_handlers);
  for (p = 0; p < ARRAY_SIZE(evpd_handlers); ++p)
   buf[p + 4] = evpd_handlers[p].page;
 }

 return 0;
}
