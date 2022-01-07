
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_types_alloc; int reference_types; } ;
struct stab_write_handle {TYPE_1__ type_cache; } ;
typedef int bfd_boolean ;


 int stab_modify_type (struct stab_write_handle*,char,int,int *,int *) ;

__attribute__((used)) static bfd_boolean
stab_reference_type (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;


  return stab_modify_type (info, '&', 4, &info->type_cache.reference_types,
      &info->type_cache.reference_types_alloc);
}
