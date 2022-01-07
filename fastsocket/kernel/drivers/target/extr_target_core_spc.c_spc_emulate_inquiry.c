
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct se_device* lun_se_dev; } ;
struct se_portal_group {TYPE_3__ tpg_virt_lun0; } ;
struct se_device {TYPE_4__* transport; } ;
struct se_cmd {unsigned char* t_task_cdb; int data_length; TYPE_2__* se_lun; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
typedef int buf ;
struct TYPE_11__ {unsigned char page; int (* emulate ) (struct se_cmd*,unsigned char*) ;} ;
struct TYPE_10__ {unsigned char (* get_device_type ) (struct se_device*) ;} ;
struct TYPE_8__ {TYPE_1__* lun_sep; } ;
struct TYPE_7__ {struct se_portal_group* sep_tpg; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int GOOD ;
 int SE_INQUIRY_BUF ;
 int TCM_INVALID_CDB_FIELD ;
 TYPE_5__* evpd_handlers ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int min_t (int ,int,int ) ;
 int pr_err (char*,unsigned char) ;
 int spc_emulate_inquiry_std (struct se_cmd*,unsigned char*) ;
 unsigned char stub1 (struct se_device*) ;
 int stub2 (struct se_cmd*,unsigned char*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;
 int u32 ;

__attribute__((used)) static sense_reason_t
spc_emulate_inquiry(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 struct se_portal_group *tpg = cmd->se_lun->lun_sep->sep_tpg;
 unsigned char *rbuf;
 unsigned char *cdb = cmd->t_task_cdb;
 unsigned char buf[SE_INQUIRY_BUF];
 sense_reason_t ret;
 int p;

 memset(buf, 0, SE_INQUIRY_BUF);

 if (dev == tpg->tpg_virt_lun0.lun_se_dev)
  buf[0] = 0x3f;
 else
  buf[0] = dev->transport->get_device_type(dev);

 if (!(cdb[1] & 0x1)) {
  if (cdb[2]) {
   pr_err("INQUIRY with EVPD==0 but PAGE CODE=%02x\n",
          cdb[2]);
   ret = TCM_INVALID_CDB_FIELD;
   goto out;
  }

  ret = spc_emulate_inquiry_std(cmd, buf);
  goto out;
 }

 for (p = 0; p < ARRAY_SIZE(evpd_handlers); ++p) {
  if (cdb[2] == evpd_handlers[p].page) {
   buf[1] = cdb[2];
   ret = evpd_handlers[p].emulate(cmd, buf);
   goto out;
  }
 }

 pr_err("Unknown VPD Code: 0x%02x\n", cdb[2]);
 ret = TCM_INVALID_CDB_FIELD;

out:
 rbuf = transport_kmap_data_sg(cmd);
 if (rbuf) {
  memcpy(rbuf, buf, min_t(u32, sizeof(buf), cmd->data_length));
  transport_kunmap_data_sg(cmd);
 }

 if (!ret)
  target_complete_cmd(cmd, GOOD);
 return ret;
}
