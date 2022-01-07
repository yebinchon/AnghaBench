
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_hba {TYPE_1__* transport; int hba_id; int hba_node; int dev_count; } ;
struct TYPE_2__ {scalar_t__ owner; int (* detach_hba ) (struct se_hba*) ;} ;


 int WARN_ON (int ) ;
 int hba_lock ;
 int kfree (struct se_hba*) ;
 int list_del (int *) ;
 int module_put (scalar_t__) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct se_hba*) ;

int
core_delete_hba(struct se_hba *hba)
{
 WARN_ON(hba->dev_count);

 hba->transport->detach_hba(hba);

 spin_lock(&hba_lock);
 list_del(&hba->hba_node);
 spin_unlock(&hba_lock);

 pr_debug("CORE_HBA[%d] - Detached HBA from Generic Target"
   " Core\n", hba->hba_id);

 if (hba->transport->owner)
  module_put(hba->transport->owner);

 hba->transport = ((void*)0);
 kfree(hba);
 return 0;
}
