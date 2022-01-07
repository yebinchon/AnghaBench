
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int s; } ;
typedef TYPE_1__ obj_attribute ;
typedef int bfd ;


 int _bfd_elf_attr_strdup (int *,char const*) ;
 TYPE_1__* elf_new_obj_attr (int *,int,int) ;

void
bfd_elf_add_obj_attr_string (bfd *abfd, int vendor, int tag, const char *s)
{
  obj_attribute *attr;

  attr = elf_new_obj_attr (abfd, vendor, tag);
  attr->type = 2;
  attr->s = _bfd_elf_attr_strdup (abfd, s);
}
