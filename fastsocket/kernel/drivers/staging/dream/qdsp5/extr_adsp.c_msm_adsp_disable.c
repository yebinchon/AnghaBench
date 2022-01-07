
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int lock; int name; } ;


 int msm_adsp_disable_locked (struct msm_adsp_module*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;

int msm_adsp_disable(struct msm_adsp_module *module)
{
 int rc;
 pr_info("msm_adsp_disable() '%s'\n", module->name);
 mutex_lock(&module->lock);
 rc = msm_adsp_disable_locked(module);
 mutex_unlock(&module->lock);
 return rc;
}
