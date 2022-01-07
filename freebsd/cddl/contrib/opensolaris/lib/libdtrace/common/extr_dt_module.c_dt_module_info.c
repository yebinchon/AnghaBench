
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dto_bss_size; int dto_bss_va; int dto_data_size; int dto_data_va; int dto_text_size; int dto_text_va; int dto_flags; int dto_id; int dto_file; int dto_name; } ;
typedef TYPE_1__ dtrace_objinfo_t ;
struct TYPE_7__ {int dm_flags; int dm_bss_size; int dm_bss_va; int dm_data_size; int dm_data_va; int dm_text_size; int dm_text_va; int dm_modid; int dm_file; int dm_name; } ;
typedef TYPE_2__ dt_module_t ;


 int DTRACE_OBJ_F_KERNEL ;
 int DTRACE_OBJ_F_PRIMARY ;
 int DT_DM_KERNEL ;
 int DT_DM_PRIMARY ;

__attribute__((used)) static dtrace_objinfo_t *
dt_module_info(const dt_module_t *dmp, dtrace_objinfo_t *dto)
{
 dto->dto_name = dmp->dm_name;
 dto->dto_file = dmp->dm_file;
 dto->dto_id = dmp->dm_modid;
 dto->dto_flags = 0;

 if (dmp->dm_flags & DT_DM_KERNEL)
  dto->dto_flags |= DTRACE_OBJ_F_KERNEL;
 if (dmp->dm_flags & DT_DM_PRIMARY)
  dto->dto_flags |= DTRACE_OBJ_F_PRIMARY;

 dto->dto_text_va = dmp->dm_text_va;
 dto->dto_text_size = dmp->dm_text_size;
 dto->dto_data_va = dmp->dm_data_va;
 dto->dto_data_size = dmp->dm_data_size;
 dto->dto_bss_va = dmp->dm_bss_va;
 dto->dto_bss_size = dmp->dm_bss_size;

 return (dto);
}
