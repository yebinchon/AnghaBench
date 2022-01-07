
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int (* obj_attrs_arg_type ) (int) ;} ;




 int abort () ;
 TYPE_1__* get_elf_backend_data (int *) ;
 int gnu_obj_attrs_arg_type (int) ;
 int stub1 (int) ;

int
_bfd_elf_obj_attrs_arg_type (bfd *abfd, int vendor, int tag)
{
  switch (vendor)
    {
    case 128:
      return get_elf_backend_data (abfd)->obj_attrs_arg_type (tag);
      break;
    case 129:
      return gnu_obj_attrs_arg_type (tag);
      break;
    default:
      abort ();
    }
}
