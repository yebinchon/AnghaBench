
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_plock_info {int * version; } ;


 int DLM_PLOCK_VERSION_MAJOR ;
 int DLM_PLOCK_VERSION_MINOR ;
 int DLM_PLOCK_VERSION_PATCH ;

__attribute__((used)) static inline void set_version(struct dlm_plock_info *info)
{
 info->version[0] = DLM_PLOCK_VERSION_MAJOR;
 info->version[1] = DLM_PLOCK_VERSION_MINOR;
 info->version[2] = DLM_PLOCK_VERSION_PATCH;
}
