
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int dummy; } ;




 int verify_jpeg_action_cmd (struct msm_adsp_module*,void*,size_t) ;
 int verify_jpeg_cfg_cmd (struct msm_adsp_module*,void*,size_t) ;

int adsp_jpeg_verify_cmd(struct msm_adsp_module *module,
    unsigned int queue_id, void *cmd_data,
    size_t cmd_size)
{
 switch(queue_id) {
 case 128:
  return verify_jpeg_cfg_cmd(module, cmd_data, cmd_size);
 case 129:
  return verify_jpeg_action_cmd(module, cmd_data, cmd_size);
 default:
  return -1;
 }
}
