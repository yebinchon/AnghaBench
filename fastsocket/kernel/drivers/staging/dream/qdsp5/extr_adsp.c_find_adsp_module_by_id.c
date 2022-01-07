
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct msm_adsp_module {int dummy; } ;
struct adsp_info {size_t max_module_id; struct msm_adsp_module** id_to_module; } ;


 size_t get_module_index (size_t) ;

__attribute__((used)) static struct msm_adsp_module *find_adsp_module_by_id(
 struct adsp_info *info, uint32_t id)
{
 if (id > info->max_module_id) {
  return ((void*)0);
 } else {





  return info->id_to_module[id];
 }
}
