
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; scalar_t__ e_shoff; scalar_t__ e_phoff; scalar_t__ e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
struct TYPE_5__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; void* e_shoff; void* e_phoff; scalar_t__ e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef void* Elf64_Off ;
typedef scalar_t__ Elf64_Addr ;
typedef TYPE_2__ Elf32_Ehdr ;


 int EI_NIDENT ;
 int bcopy (int ,int ,int ) ;

__attribute__((used)) static void
ehdr_to_gelf(const Elf32_Ehdr *src, GElf_Ehdr *dst)
{
 bcopy(src->e_ident, dst->e_ident, EI_NIDENT);
 dst->e_type = src->e_type;
 dst->e_machine = src->e_machine;
 dst->e_version = src->e_version;
 dst->e_entry = (Elf64_Addr)src->e_entry;
 dst->e_phoff = (Elf64_Off)src->e_phoff;
 dst->e_shoff = (Elf64_Off)src->e_shoff;
 dst->e_flags = src->e_flags;
 dst->e_ehsize = src->e_ehsize;
 dst->e_phentsize = src->e_phentsize;
 dst->e_phnum = src->e_phnum;
 dst->e_shentsize = src->e_shentsize;
 dst->e_shnum = src->e_shnum;
 dst->e_shstrndx = src->e_shstrndx;
}
