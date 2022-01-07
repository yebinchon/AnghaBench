
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_7__ {scalar_t__ link; } ;
struct TYPE_8__ {TYPE_1__ i; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_4__ plt; TYPE_3__ root; } ;
struct elf32_arm_link_hash_table {int use_blx; scalar_t__ vxworks_p; scalar_t__ symbian_p; } ;
struct elf32_arm_link_hash_entry {scalar_t__ plt_thumb_refcount; } ;
struct TYPE_11__ {int info; } ;
typedef TYPE_5__ output_arch_syminfo ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int ARM_MAP_ARM ;
 int ARM_MAP_DATA ;
 int ARM_MAP_THUMB ;
 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (int ) ;
 int elf32_arm_ouput_plt_map_sym (TYPE_5__*,int ,scalar_t__) ;

__attribute__((used)) static bfd_boolean
elf32_arm_output_plt_map (struct elf_link_hash_entry *h, void *inf)
{
  output_arch_syminfo *osi = (output_arch_syminfo *) inf;
  struct elf32_arm_link_hash_table *htab;
  struct elf32_arm_link_hash_entry *eh;
  bfd_vma addr;

  htab = elf32_arm_hash_table (osi->info);

  if (h->root.type == bfd_link_hash_indirect)
    return TRUE;

  if (h->root.type == bfd_link_hash_warning)



    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  if (h->plt.offset == (bfd_vma) -1)
    return TRUE;

  eh = (struct elf32_arm_link_hash_entry *) h;
  addr = h->plt.offset;
  if (htab->symbian_p)
    {
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_ARM, addr))
 return FALSE;
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_DATA, addr + 4))
 return FALSE;
    }
  else if (htab->vxworks_p)
    {
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_ARM, addr))
 return FALSE;
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_DATA, addr + 8))
 return FALSE;
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_ARM, addr + 12))
 return FALSE;
      if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_DATA, addr + 20))
 return FALSE;
    }
  else
    {
      bfd_boolean thumb_stub;

      thumb_stub = eh->plt_thumb_refcount > 0 && !htab->use_blx;
      if (thumb_stub)
 {
   if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_THUMB, addr - 4))
     return FALSE;
 }
      if (thumb_stub || addr == 20)
 {
   if (!elf32_arm_ouput_plt_map_sym (osi, ARM_MAP_ARM, addr))
     return FALSE;
 }

    }

  return TRUE;
}
