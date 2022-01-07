
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
struct TYPE_5__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ Elf32_Shdr ;



__attribute__((used)) static void
shdr_to_gelf(const Elf32_Shdr *src, GElf_Shdr *dst)
{
 dst->sh_name = src->sh_name;
 dst->sh_type = src->sh_type;
 dst->sh_flags = src->sh_flags;
 dst->sh_addr = src->sh_addr;
 dst->sh_offset = src->sh_offset;
 dst->sh_size = src->sh_size;
 dst->sh_link = src->sh_link;
 dst->sh_info = src->sh_info;
 dst->sh_addralign = src->sh_addralign;
 dst->sh_entsize = src->sh_entsize;
}
