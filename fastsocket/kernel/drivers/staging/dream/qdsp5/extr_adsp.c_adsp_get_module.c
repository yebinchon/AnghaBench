
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct adsp_info {size_t** task_to_module; } ;


 int BUG_ON (int) ;
 unsigned long current_image ;

uint32_t adsp_get_module(struct adsp_info *info, uint32_t task)
{
 BUG_ON(current_image == -1UL);
 return info->task_to_module[current_image][task];
}
