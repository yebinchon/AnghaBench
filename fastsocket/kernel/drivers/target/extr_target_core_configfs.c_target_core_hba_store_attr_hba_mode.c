
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_subsystem_api {int (* pmode_enable_hba ) (struct se_hba*,unsigned long) ;} ;
struct se_hba {int hba_flags; scalar_t__ dev_count; struct se_subsystem_api* transport; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int HBA_FLAGS_PSCSI_MODE ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;
 int stub1 (struct se_hba*,unsigned long) ;

__attribute__((used)) static ssize_t target_core_hba_store_attr_hba_mode(struct se_hba *hba,
    const char *page, size_t count)
{
 struct se_subsystem_api *transport = hba->transport;
 unsigned long mode_flag;
 int ret;

 if (transport->pmode_enable_hba == ((void*)0))
  return -EINVAL;

 ret = strict_strtoul(page, 0, &mode_flag);
 if (ret < 0) {
  pr_err("Unable to extract hba mode flag: %d\n", ret);
  return -EINVAL;
 }

 if (hba->dev_count) {
  pr_err("Unable to set hba_mode with active devices\n");
  return -EINVAL;
 }

 ret = transport->pmode_enable_hba(hba, mode_flag);
 if (ret < 0)
  return -EINVAL;
 if (ret > 0)
  hba->hba_flags |= HBA_FLAGS_PSCSI_MODE;
 else if (ret == 0)
  hba->hba_flags &= ~HBA_FLAGS_PSCSI_MODE;

 return count;
}
