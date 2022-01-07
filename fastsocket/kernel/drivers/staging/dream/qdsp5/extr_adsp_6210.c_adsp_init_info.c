
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adsp_info {int send_irq; int read_ctrl; int write_ctrl; int max_msg16_size; int max_msg32_size; int max_task_id; int max_image_id; int module; int module_count; int task_to_module; int queue_offset; int max_queue_id; scalar_t__ max_module_id; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ QDSP_MODULE_MAX ;
 int QDSP_QUEUE_MAX ;
 int module_info ;
 int qdsp_queue_offset_table ;
 int qdsp_task_to_module ;

int adsp_init_info(struct adsp_info *info)
{
 info->send_irq = 0x00c00200;
 info->read_ctrl = 0x00400038;
 info->write_ctrl = 0x00400034;

 info->max_msg16_size = 193;
 info->max_msg32_size = 8;

 info->max_task_id = 16;
 info->max_module_id = QDSP_MODULE_MAX - 1;
 info->max_queue_id = QDSP_QUEUE_MAX;
 info->max_image_id = 2;
 info->queue_offset = qdsp_queue_offset_table;
 info->task_to_module = qdsp_task_to_module;

 info->module_count = ARRAY_SIZE(module_info);
 info->module = module_info;
 return 0;
}
