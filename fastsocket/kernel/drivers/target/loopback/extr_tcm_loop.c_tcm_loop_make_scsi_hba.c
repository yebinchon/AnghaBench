
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_wwn {int dummy; } ;
struct tcm_loop_hba {struct se_wwn tl_hba_wwn; struct Scsi_Host* sh; int * tl_wwn_address; int tl_proto_id; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int EINVAL ;
 int ENOMEM ;
 struct se_wwn* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SCSI_PROTOCOL_FCP ;
 int SCSI_PROTOCOL_ISCSI ;
 int SCSI_PROTOCOL_SAS ;
 scalar_t__ TL_WWN_ADDR_LEN ;
 int kfree (struct tcm_loop_hba*) ;
 struct tcm_loop_hba* kzalloc (int,int ) ;
 int pr_debug (char*,int ,char const*,int ) ;
 int pr_err (char*,...) ;
 int snprintf (int *,scalar_t__,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int tcm_loop_dump_proto_id (struct tcm_loop_hba*) ;
 int tcm_loop_hba_no_cnt ;
 int tcm_loop_setup_hba_bus (struct tcm_loop_hba*,int ) ;

struct se_wwn *tcm_loop_make_scsi_hba(
 struct target_fabric_configfs *tf,
 struct config_group *group,
 const char *name)
{
 struct tcm_loop_hba *tl_hba;
 struct Scsi_Host *sh;
 char *ptr;
 int ret, off = 0;

 tl_hba = kzalloc(sizeof(struct tcm_loop_hba), GFP_KERNEL);
 if (!tl_hba) {
  pr_err("Unable to allocate struct tcm_loop_hba\n");
  return ERR_PTR(-ENOMEM);
 }




 ptr = strstr(name, "naa.");
 if (ptr) {
  tl_hba->tl_proto_id = SCSI_PROTOCOL_SAS;
  goto check_len;
 }
 ptr = strstr(name, "fc.");
 if (ptr) {
  tl_hba->tl_proto_id = SCSI_PROTOCOL_FCP;
  off = 3;
  goto check_len;
 }
 ptr = strstr(name, "iqn.");
 if (!ptr) {
  pr_err("Unable to locate prefix for emulated Target "
    "Port: %s\n", name);
  ret = -EINVAL;
  goto out;
 }
 tl_hba->tl_proto_id = SCSI_PROTOCOL_ISCSI;

check_len:
 if (strlen(name) >= TL_WWN_ADDR_LEN) {
  pr_err("Emulated NAA %s Address: %s, exceeds"
   " max: %d\n", name, tcm_loop_dump_proto_id(tl_hba),
   TL_WWN_ADDR_LEN);
  ret = -EINVAL;
  goto out;
 }
 snprintf(&tl_hba->tl_wwn_address[0], TL_WWN_ADDR_LEN, "%s", &name[off]);






 ret = tcm_loop_setup_hba_bus(tl_hba, tcm_loop_hba_no_cnt);
 if (ret)
  goto out;

 sh = tl_hba->sh;
 tcm_loop_hba_no_cnt++;
 pr_debug("TCM_Loop_ConfigFS: Allocated emulated Target"
  " %s Address: %s at Linux/SCSI Host ID: %d\n",
  tcm_loop_dump_proto_id(tl_hba), name, sh->host_no);

 return &tl_hba->tl_hba_wwn;
out:
 kfree(tl_hba);
 return ERR_PTR(ret);
}
