
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {char const* obj_attrs_vendor; } ;


 int OBJ_ATTR_PROC ;
 TYPE_1__* get_elf_backend_data (int *) ;

__attribute__((used)) static const char *
vendor_obj_attr_name (bfd *abfd, int vendor)
{
  return (vendor == OBJ_ATTR_PROC
   ? get_elf_backend_data (abfd)->obj_attrs_vendor
   : "gnu");
}
