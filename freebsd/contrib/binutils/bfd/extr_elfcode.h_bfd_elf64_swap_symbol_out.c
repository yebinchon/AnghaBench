
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_5__ {void* st_name; int st_shndx; int st_other; int st_info; int st_size; int st_value; } ;
struct TYPE_4__ {unsigned int st_name; unsigned int st_shndx; int st_other; int st_info; int st_size; int st_value; } ;
typedef TYPE_1__ Elf_Internal_Sym ;
typedef TYPE_2__ Elf_External_Sym ;


 int H_PUT_16 (int *,unsigned int,int ) ;
 int H_PUT_32 (int *,unsigned int,void*) ;
 int H_PUT_8 (int *,int ,int ) ;
 int H_PUT_WORD (int *,int ,int ) ;
 unsigned int SHN_HIRESERVE ;
 unsigned int SHN_XINDEX ;
 int abort () ;

void
elf_swap_symbol_out (bfd *abfd,
       const Elf_Internal_Sym *src,
       void *cdst,
       void *shndx)
{
  unsigned int tmp;
  Elf_External_Sym *dst = cdst;
  H_PUT_32 (abfd, src->st_name, dst->st_name);
  H_PUT_WORD (abfd, src->st_value, dst->st_value);
  H_PUT_WORD (abfd, src->st_size, dst->st_size);
  H_PUT_8 (abfd, src->st_info, dst->st_info);
  H_PUT_8 (abfd, src->st_other, dst->st_other);
  tmp = src->st_shndx;
  if (tmp > SHN_HIRESERVE)
    {
      if (shndx == ((void*)0))
 abort ();
      H_PUT_32 (abfd, tmp, shndx);
      tmp = SHN_XINDEX;
    }
  H_PUT_16 (abfd, tmp, dst->st_shndx);
}
