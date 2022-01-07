
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_reloc {scalar_t__ r_vaddr; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;



__attribute__((used)) static bfd_size_type
xcoff_find_reloc (struct internal_reloc *relocs,
    bfd_size_type count,
    bfd_vma address)
{
  bfd_size_type min, max, this;

  if (count < 2)
    {
      if (count == 1 && relocs[0].r_vaddr < address)
 return 1;
      else
 return 0;
    }

  min = 0;
  max = count;


  while (min + 1 < max)
    {
      bfd_vma raddr;

      this = (max + min) / 2;
      raddr = relocs[this].r_vaddr;
      if (raddr > address)
 max = this;
      else if (raddr < address)
 min = this;
      else
 {
   min = this;
   break;
 }
    }

  if (relocs[min].r_vaddr < address)
    return min + 1;

  while (min > 0
  && relocs[min - 1].r_vaddr == address)
    --min;

  return min;
}
