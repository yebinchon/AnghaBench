
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {size_t e_shstrndx; } ;
struct TYPE_13__ {size_t e_shstrndx; } ;
struct TYPE_10__ {size_t sh_link; } ;
struct TYPE_9__ {size_t sh_link; } ;
struct TYPE_11__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_12__ {scalar_t__ s_ndx; TYPE_3__ s_shdr; } ;
typedef TYPE_4__ Elf_Scn ;
typedef TYPE_5__ Elf64_Ehdr ;
typedef TYPE_6__ Elf32_Ehdr ;
typedef int Elf ;


 int ELFCLASS32 ;
 int ELF_C_SET ;
 int ELF_F_DIRTY ;
 size_t SHN_LORESERVE ;
 scalar_t__ SHN_UNDEF ;
 size_t SHN_XINDEX ;
 TYPE_4__* _libelf_getscn0 (int *) ;
 int assert (int) ;
 int elf_flagshdr (TYPE_4__*,int ,int ) ;

int
_libelf_setshstrndx(Elf *e, void *eh, int ec, size_t shstrndx)
{
 Elf_Scn *scn;

 if (shstrndx >= SHN_LORESERVE) {
  if ((scn = _libelf_getscn0(e)) == ((void*)0))
   return (0);

  assert(scn->s_ndx == SHN_UNDEF);

  if (ec == ELFCLASS32)
   scn->s_shdr.s_shdr32.sh_link = shstrndx;
  else
   scn->s_shdr.s_shdr64.sh_link = shstrndx;

  (void) elf_flagshdr(scn, ELF_C_SET, ELF_F_DIRTY);

  shstrndx = SHN_XINDEX;
 }

 if (ec == ELFCLASS32)
  ((Elf32_Ehdr *) eh)->e_shstrndx = shstrndx & 0xFFFFU;
 else
  ((Elf64_Ehdr *) eh)->e_shstrndx = shstrndx & 0xFFFFU;

 return (1);
}
