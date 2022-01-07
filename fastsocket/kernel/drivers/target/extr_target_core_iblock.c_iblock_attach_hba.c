
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_hba {int hba_id; } ;


 int IBLOCK_VERSION ;
 int TARGET_CORE_MOD_VERSION ;
 int pr_debug (char*,int ,int ,int ) ;

__attribute__((used)) static int iblock_attach_hba(struct se_hba *hba, u32 host_id)
{
 pr_debug("CORE_HBA[%d] - TCM iBlock HBA Driver %s on"
  " Generic Target Core Stack %s\n", hba->hba_id,
  IBLOCK_VERSION, TARGET_CORE_MOD_VERSION);
 return 0;
}
