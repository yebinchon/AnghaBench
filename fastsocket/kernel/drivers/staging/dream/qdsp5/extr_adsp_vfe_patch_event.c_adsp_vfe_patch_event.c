
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int dummy; } ;
struct adsp_event {int msg_id; } ;






 int patch_af_wb_event (struct msm_adsp_module*,struct adsp_event*) ;
 int patch_op_event (struct msm_adsp_module*,struct adsp_event*) ;

int adsp_vfe_patch_event(struct msm_adsp_module *module,
   struct adsp_event *event)
{
 switch(event->msg_id) {
 case 131:
 case 130:
  return patch_op_event(module, event);
 case 129:
 case 128:
  return patch_af_wb_event(module, event);
 default:
  break;
 }

 return 0;
}
