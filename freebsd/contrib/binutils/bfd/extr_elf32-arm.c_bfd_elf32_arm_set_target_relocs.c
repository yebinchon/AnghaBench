
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf32_arm_link_hash_table {int target1_is_rel; int fix_v4bx; int use_blx; int pic_veneer; int vfp11_fix; int target2_reloc; } ;
struct bfd_link_info {int dummy; } ;
struct bfd {int dummy; } ;
typedef int bfd_arm_vfp11_fix ;
struct TYPE_2__ {int no_enum_size_warning; } ;


 int R_ARM_ABS32 ;
 int R_ARM_GOT_PREL ;
 int R_ARM_REL32 ;
 int _ (char*) ;
 int _bfd_error_handler (int ,char*) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 TYPE_1__* elf32_arm_tdata (struct bfd*) ;
 scalar_t__ strcmp (char*,char*) ;

void
bfd_elf32_arm_set_target_relocs (struct bfd *output_bfd,
     struct bfd_link_info *link_info,
     int target1_is_rel,
     char * target2_type,
                                 int fix_v4bx,
     int use_blx,
                                 bfd_arm_vfp11_fix vfp11_fix,
     int no_enum_warn, int pic_veneer)
{
  struct elf32_arm_link_hash_table *globals;

  globals = elf32_arm_hash_table (link_info);

  globals->target1_is_rel = target1_is_rel;
  if (strcmp (target2_type, "rel") == 0)
    globals->target2_reloc = R_ARM_REL32;
  else if (strcmp (target2_type, "abs") == 0)
    globals->target2_reloc = R_ARM_ABS32;
  else if (strcmp (target2_type, "got-rel") == 0)
    globals->target2_reloc = R_ARM_GOT_PREL;
  else
    {
      _bfd_error_handler (_("Invalid TARGET2 relocation type '%s'."),
     target2_type);
    }
  globals->fix_v4bx = fix_v4bx;
  globals->use_blx |= use_blx;
  globals->vfp11_fix = vfp11_fix;
  globals->pic_veneer = pic_veneer;

  elf32_arm_tdata (output_bfd)->no_enum_size_warning = no_enum_warn;
}
