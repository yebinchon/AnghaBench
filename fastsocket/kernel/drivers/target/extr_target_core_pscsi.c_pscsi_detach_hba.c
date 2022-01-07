
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_hba {struct pscsi_hba_virt* hba_ptr; int hba_id; } ;
struct pscsi_hba_virt {struct Scsi_Host* phv_lld_host; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {char* name; } ;


 int kfree (struct pscsi_hba_virt*) ;
 int pr_debug (char*,int ,...) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static void pscsi_detach_hba(struct se_hba *hba)
{
 struct pscsi_hba_virt *phv = hba->hba_ptr;
 struct Scsi_Host *scsi_host = phv->phv_lld_host;

 if (scsi_host) {
  scsi_host_put(scsi_host);

  pr_debug("CORE_HBA[%d] - Detached SCSI HBA: %s from"
   " Generic Target Core\n", hba->hba_id,
   (scsi_host->hostt->name) ? (scsi_host->hostt->name) :
   "Unknown");
 } else
  pr_debug("CORE_HBA[%d] - Detached Virtual SCSI HBA"
   " from Generic Target Core\n", hba->hba_id);

 kfree(phv);
 hba->hba_ptr = ((void*)0);
}
