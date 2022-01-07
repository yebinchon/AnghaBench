
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_loop_hba {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct tcm_loop_hba*) ;
 struct tcm_loop_hba* to_tcm_loop_hba (struct device*) ;

__attribute__((used)) static void tcm_loop_release_adapter(struct device *dev)
{
 struct tcm_loop_hba *tl_hba = to_tcm_loop_hba(dev);

 kfree(tl_hba);
}
