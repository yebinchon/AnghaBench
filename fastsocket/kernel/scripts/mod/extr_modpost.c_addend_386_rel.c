
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct elf_info {TYPE_1__* hdr; } ;
struct TYPE_6__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_5__ {int e_type; } ;
typedef int Elf_Shdr ;
typedef TYPE_2__ Elf_Rela ;


 unsigned int ELF_R_TYPE (int ) ;
 int ET_EXEC ;


 int TO_NATIVE (unsigned int) ;
 unsigned int* reloc_location (struct elf_info*,int *,TYPE_2__*) ;

__attribute__((used)) static int addend_386_rel(struct elf_info *elf, Elf_Shdr *sechdr, Elf_Rela *r)
{
 unsigned int r_typ = ELF_R_TYPE(r->r_info);
 unsigned int *location = reloc_location(elf, sechdr, r);

 switch (r_typ) {
 case 129:
  r->r_addend = TO_NATIVE(*location);
  break;
 case 128:
  r->r_addend = TO_NATIVE(*location) + 4;

  if (elf->hdr->e_type == ET_EXEC)
   r->r_addend += r->r_offset;
  break;
 }
 return 0;
}
