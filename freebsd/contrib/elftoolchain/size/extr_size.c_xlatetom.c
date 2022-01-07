
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t d_size; int d_version; void* d_buf; int d_type; } ;
struct TYPE_8__ {int * e_ident; int e_version; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf_Type ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf ;


 size_t EI_DATA ;
 TYPE_2__* gelf_xlatetom (int *,TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static Elf_Data *
xlatetom(Elf *elf, GElf_Ehdr *elfhdr, void *_src, void *_dst,
    Elf_Type type, size_t size)
{
 Elf_Data src, dst;

 src.d_buf = _src;
 src.d_type = type;
 src.d_version = elfhdr->e_version;
 src.d_size = size;
 dst.d_buf = _dst;
 dst.d_version = elfhdr->e_version;
 dst.d_size = size;
 return (gelf_xlatetom(elf, &dst, &src, elfhdr->e_ident[EI_DATA]));
}
