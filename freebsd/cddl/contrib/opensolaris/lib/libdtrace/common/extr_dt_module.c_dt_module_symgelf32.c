
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int st_size; int st_value; int st_shndx; int st_other; int st_info; int st_name; } ;
struct TYPE_6__ {int st_size; int st_value; int st_shndx; int st_other; int st_info; int st_name; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ Elf32_Sym ;



__attribute__((used)) static GElf_Sym *
dt_module_symgelf32(const Elf32_Sym *src, GElf_Sym *dst)
{
 if (dst != ((void*)0)) {
  dst->st_name = src->st_name;
  dst->st_info = src->st_info;
  dst->st_other = src->st_other;
  dst->st_shndx = src->st_shndx;
  dst->st_value = src->st_value;
  dst->st_size = src->st_size;
 }

 return (dst);
}
