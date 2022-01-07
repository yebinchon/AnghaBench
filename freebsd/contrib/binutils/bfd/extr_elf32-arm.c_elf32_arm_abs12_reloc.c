
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd ;


 int bfd_get_32 (int *,void*) ;
 int bfd_put_32 (int *,int,void*) ;
 int bfd_reloc_ok ;
 int bfd_reloc_overflow ;

__attribute__((used)) static bfd_reloc_status_type
elf32_arm_abs12_reloc (bfd *abfd, void *data, bfd_vma value)
{
  if (value > 0xfff)
    return bfd_reloc_overflow;

  value |= bfd_get_32 (abfd, data) & 0xfffff000;
  bfd_put_32 (abfd, value, data);
  return bfd_reloc_ok;
}
