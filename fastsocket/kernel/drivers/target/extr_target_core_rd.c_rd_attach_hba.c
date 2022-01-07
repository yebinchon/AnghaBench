
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_hba {int hba_id; struct rd_host* hba_ptr; } ;
struct rd_host {int rd_host_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RD_HBA_VERSION ;
 int TARGET_CORE_MOD_VERSION ;
 struct rd_host* kzalloc (int,int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int rd_attach_hba(struct se_hba *hba, u32 host_id)
{
 struct rd_host *rd_host;

 rd_host = kzalloc(sizeof(struct rd_host), GFP_KERNEL);
 if (!rd_host) {
  pr_err("Unable to allocate memory for struct rd_host\n");
  return -ENOMEM;
 }

 rd_host->rd_host_id = host_id;

 hba->hba_ptr = rd_host;

 pr_debug("CORE_HBA[%d] - TCM Ramdisk HBA Driver %s on"
  " Generic Target Core Stack %s\n", hba->hba_id,
  RD_HBA_VERSION, TARGET_CORE_MOD_VERSION);

 return 0;
}
