
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {int r_info; int r_offset; } ;
struct TYPE_4__ {scalar_t__ r_addend; void* r_info; void* r_offset; } ;
typedef TYPE_1__ Elf_Internal_Rela ;
typedef TYPE_2__ Elf_External_Rel ;


 void* H_GET_WORD (int *,int ) ;

void
elf_swap_reloc_in (bfd *abfd,
     const bfd_byte *s,
     Elf_Internal_Rela *dst)
{
  const Elf_External_Rel *src = (const Elf_External_Rel *) s;
  dst->r_offset = H_GET_WORD (abfd, src->r_offset);
  dst->r_info = H_GET_WORD (abfd, src->r_info);
  dst->r_addend = 0;
}
