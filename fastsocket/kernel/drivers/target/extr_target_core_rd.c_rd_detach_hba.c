
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {struct rd_host* hba_ptr; int hba_id; } ;
struct rd_host {int rd_host_id; } ;


 int kfree (struct rd_host*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void rd_detach_hba(struct se_hba *hba)
{
 struct rd_host *rd_host = hba->hba_ptr;

 pr_debug("CORE_HBA[%d] - Detached Ramdisk HBA: %u from"
  " Generic Target Core\n", hba->hba_id, rd_host->rd_host_id);

 kfree(rd_host);
 hba->hba_ptr = ((void*)0);
}
