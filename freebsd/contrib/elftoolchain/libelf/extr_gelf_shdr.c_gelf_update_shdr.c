
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ e_kind; int e_class; scalar_t__ e_cmd; } ;
struct TYPE_14__ {int sh_info; int sh_link; int sh_type; int sh_name; } ;
struct TYPE_12__ {int sh_info; int sh_link; int sh_type; int sh_name; } ;
struct TYPE_11__ {TYPE_4__ s_shdr32; TYPE_2__ s_shdr64; } ;
struct TYPE_13__ {TYPE_1__ s_shdr; TYPE_5__* s_elf; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef TYPE_3__ Elf_Scn ;
typedef TYPE_4__ Elf32_Shdr ;
typedef TYPE_5__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_C_READ ;
 int ELF_C_SET ;
 int ELF_F_DIRTY ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_COPY_U32 (TYPE_4__*,TYPE_2__*,int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int MODE ;
 int elf_flagscn (TYPE_3__*,int ,int ) ;
 int sh_addr ;
 int sh_addralign ;
 int sh_entsize ;
 int sh_flags ;
 int sh_offset ;
 int sh_size ;

int
gelf_update_shdr(Elf_Scn *scn, GElf_Shdr *s)
{
 int ec;
 Elf *e;
 Elf32_Shdr *sh32;


 if (s == ((void*)0) || scn == ((void*)0) || (e = scn->s_elf) == ((void*)0) ||
     e->e_kind != ELF_K_ELF ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (e->e_cmd == ELF_C_READ) {
  LIBELF_SET_ERROR(MODE, 0);
  return (0);
 }

 (void) elf_flagscn(scn, ELF_C_SET, ELF_F_DIRTY);

 if (ec == ELFCLASS64) {
  scn->s_shdr.s_shdr64 = *s;
  return (1);
 }

 sh32 = &scn->s_shdr.s_shdr32;

 sh32->sh_name = s->sh_name;
 sh32->sh_type = s->sh_type;
 LIBELF_COPY_U32(sh32, s, sh_flags);
 LIBELF_COPY_U32(sh32, s, sh_addr);
 LIBELF_COPY_U32(sh32, s, sh_offset);
 LIBELF_COPY_U32(sh32, s, sh_size);
 sh32->sh_link = s->sh_link;
 sh32->sh_info = s->sh_info;
 LIBELF_COPY_U32(sh32, s, sh_addralign);
 LIBELF_COPY_U32(sh32, s, sh_entsize);

 return (1);
}
