
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int (* patch_event ) (struct msm_adsp_module*,struct adsp_event*) ;} ;
struct adsp_event {int dummy; } ;


 int stub1 (struct msm_adsp_module*,struct adsp_event*) ;

__attribute__((used)) static int adsp_patch_event(struct msm_adsp_module *module,
    struct adsp_event *event)
{

 if (module->patch_event)
  return module->patch_event(module, event);
 return 0;
}
