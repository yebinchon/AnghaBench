
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_vma ;
typedef int bfd ;


 int OBJ_ATTR_GNU ;
 int OBJ_ATTR_PROC ;
 scalar_t__ vendor_obj_attr_size (int *,int ) ;

bfd_vma
bfd_elf_obj_attr_size (bfd *abfd)
{
  bfd_vma size;

  size = vendor_obj_attr_size (abfd, OBJ_ATTR_PROC);
  size += vendor_obj_attr_size (abfd, OBJ_ATTR_GNU);


  return (size ? size + 1 : 0);
}
