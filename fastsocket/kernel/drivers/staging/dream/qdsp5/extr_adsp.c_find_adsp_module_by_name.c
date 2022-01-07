
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int name; } ;
struct adsp_info {unsigned int module_count; } ;


 struct msm_adsp_module* adsp_modules ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct msm_adsp_module *find_adsp_module_by_name(
 struct adsp_info *info, const char *name)
{
 unsigned n;
 for (n = 0; n < info->module_count; n++)
  if (!strcmp(name, adsp_modules[n].name))
   return adsp_modules + n;
 return ((void*)0);
}
