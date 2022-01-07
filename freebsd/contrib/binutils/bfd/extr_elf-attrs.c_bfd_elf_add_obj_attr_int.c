
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; unsigned int i; } ;
typedef TYPE_1__ obj_attribute ;
typedef int bfd ;


 TYPE_1__* elf_new_obj_attr (int *,int,int) ;

void
bfd_elf_add_obj_attr_int (bfd *abfd, int vendor, int tag, unsigned int i)
{
  obj_attribute *attr;

  attr = elf_new_obj_attr (abfd, vendor, tag);
  attr->type = 1;
  attr->i = i;
}
