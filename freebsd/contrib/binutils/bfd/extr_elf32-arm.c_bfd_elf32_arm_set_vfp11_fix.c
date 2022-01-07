
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf32_arm_link_hash_table {int vfp11_fix; } ;
struct bfd_link_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ i; } ;
typedef TYPE_1__ obj_attribute ;
typedef int bfd ;




 scalar_t__ TAG_CPU_ARCH_V7 ;
 size_t Tag_CPU_arch ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 TYPE_1__* elf_known_obj_attributes_proc (int *) ;
 int stub1 (int ,int *) ;

void
bfd_elf32_arm_set_vfp11_fix (bfd *obfd, struct bfd_link_info *link_info)
{
  struct elf32_arm_link_hash_table *globals = elf32_arm_hash_table (link_info);
  obj_attribute *out_attr = elf_known_obj_attributes_proc (obfd);


  if (out_attr[Tag_CPU_arch].i >= TAG_CPU_ARCH_V7)
    {
      switch (globals->vfp11_fix)
        {
        case 129:
        case 128:
          globals->vfp11_fix = 128;
          break;

        default:

          (*_bfd_error_handler) (_("%B: warning: selected VFP11 erratum "
            "workaround is not necessary for target architecture"), obfd);
        }
    }
  else if (globals->vfp11_fix == 129)



    globals->vfp11_fix = 128;
}
