
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf32_arm_link_hash_table {int dummy; } ;
struct TYPE_8__ {TYPE_5__* sec; int finfo; int (* func ) (int ,char const*,TYPE_3__*,TYPE_5__*,int *) ;int sec_shndx; int info; } ;
typedef TYPE_2__ output_arch_syminfo ;
typedef enum map_symbol_type { ____Placeholder_map_symbol_type } map_symbol_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_10__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
struct TYPE_9__ {int st_shndx; int st_info; scalar_t__ st_other; scalar_t__ st_size; scalar_t__ st_value; } ;
struct TYPE_7__ {scalar_t__ vma; } ;
typedef TYPE_3__ Elf_Internal_Sym ;


 int ELF_ST_INFO (int ,int ) ;
 int FALSE ;
 int STB_LOCAL ;
 int STT_NOTYPE ;
 int TRUE ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (int ) ;
 int stub1 (int ,char const*,TYPE_3__*,TYPE_5__*,int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_ouput_plt_map_sym (output_arch_syminfo *osi,
        enum map_symbol_type type,
        bfd_vma offset)
{
  static const char *names[3] = {"$a", "$t", "$d"};
  struct elf32_arm_link_hash_table *htab;
  Elf_Internal_Sym sym;

  htab = elf32_arm_hash_table (osi->info);
  sym.st_value = osi->sec->output_section->vma
   + osi->sec->output_offset
   + offset;
  sym.st_size = 0;
  sym.st_other = 0;
  sym.st_info = ELF_ST_INFO (STB_LOCAL, STT_NOTYPE);
  sym.st_shndx = osi->sec_shndx;
  if (!osi->func (osi->finfo, names[type], &sym, osi->sec, ((void*)0)))
    return FALSE;
  return TRUE;
}
