
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_hba {int hba_id; struct pscsi_hba_virt* hba_ptr; } ;
struct pscsi_hba_virt {int phv_mode; struct Scsi_Host* phv_lld_host; int phv_host_id; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ IS_ERR (struct Scsi_Host*) ;
 int PHV_LLD_SCSI_HOST_NO ;
 int PHV_VIRTUAL_HOST_ID ;
 int PTR_ERR (struct Scsi_Host*) ;
 int pr_debug (char*,int ,char*) ;
 int pr_err (char*,int ) ;
 struct Scsi_Host* scsi_host_lookup (int ) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static int pscsi_pmode_enable_hba(struct se_hba *hba, unsigned long mode_flag)
{
 struct pscsi_hba_virt *phv = hba->hba_ptr;
 struct Scsi_Host *sh = phv->phv_lld_host;



 if (!mode_flag) {
  if (!sh)
   return 0;

  phv->phv_lld_host = ((void*)0);
  phv->phv_mode = PHV_VIRTUAL_HOST_ID;

  pr_debug("CORE_HBA[%d] - Disabled pSCSI HBA Passthrough"
   " %s\n", hba->hba_id, (sh->hostt->name) ?
   (sh->hostt->name) : "Unknown");

  scsi_host_put(sh);
  return 0;
 }




 sh = scsi_host_lookup(phv->phv_host_id);
 if (IS_ERR(sh)) {
  pr_err("pSCSI: Unable to locate SCSI Host for"
   " phv_host_id: %d\n", phv->phv_host_id);
  return PTR_ERR(sh);
 }

 phv->phv_lld_host = sh;
 phv->phv_mode = PHV_LLD_SCSI_HOST_NO;

 pr_debug("CORE_HBA[%d] - Enabled pSCSI HBA Passthrough %s\n",
  hba->hba_id, (sh->hostt->name) ? (sh->hostt->name) : "Unknown");

 return 1;
}
