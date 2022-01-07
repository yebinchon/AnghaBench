
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
struct TYPE_5__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef TYPE_2__ Elf_External_Shdr ;


 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_WORD (int *,int ,int ) ;

__attribute__((used)) static void
elf_swap_shdr_out (bfd *abfd,
     const Elf_Internal_Shdr *src,
     Elf_External_Shdr *dst)
{

  H_PUT_32 (abfd, src->sh_name, dst->sh_name);
  H_PUT_32 (abfd, src->sh_type, dst->sh_type);
  H_PUT_WORD (abfd, src->sh_flags, dst->sh_flags);
  H_PUT_WORD (abfd, src->sh_addr, dst->sh_addr);
  H_PUT_WORD (abfd, src->sh_offset, dst->sh_offset);
  H_PUT_WORD (abfd, src->sh_size, dst->sh_size);
  H_PUT_32 (abfd, src->sh_link, dst->sh_link);
  H_PUT_32 (abfd, src->sh_info, dst->sh_info);
  H_PUT_WORD (abfd, src->sh_addralign, dst->sh_addralign);
  H_PUT_WORD (abfd, src->sh_entsize, dst->sh_entsize);
}
