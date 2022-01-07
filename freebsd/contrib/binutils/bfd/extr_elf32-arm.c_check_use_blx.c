
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int use_blx; int obfd; } ;


 int OBJ_ATTR_PROC ;
 int Tag_CPU_arch ;
 int bfd_elf_get_obj_attr_int (int ,int ,int ) ;

__attribute__((used)) static void check_use_blx(struct elf32_arm_link_hash_table *globals)
{
  if (bfd_elf_get_obj_attr_int (globals->obfd, OBJ_ATTR_PROC,
    Tag_CPU_arch) > 2)
    globals->use_blx = 1;
}
