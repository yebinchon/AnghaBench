
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int asection ;
struct TYPE_3__ {scalar_t__ text_base; scalar_t__ text_size; } ;
struct TYPE_4__ {TYPE_1__ dld_desc; int have_read_dld_descriptor; } ;
typedef scalar_t__ CORE_ADDR ;


 int auto_solib_add ;
 int current_target ;
 TYPE_2__ dld_cache ;
 int read_dld_descriptor (int *,int ) ;
 int * symfile_objfile ;

int
pa64_solib_in_dynamic_linker (int pid, CORE_ADDR pc)
{
  asection *shlib_info;

  if (symfile_objfile == ((void*)0))
    return 0;

  if (!dld_cache.have_read_dld_descriptor)
    if (!read_dld_descriptor (&current_target, auto_solib_add))
      return 0;

  return (pc >= dld_cache.dld_desc.text_base
   && pc < dld_cache.dld_desc.text_base + dld_cache.dld_desc.text_size);
}
