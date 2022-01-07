
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int obfd; } ;


 int OBJ_ATTR_PROC ;
 int TAG_CPU_ARCH_V6T2 ;
 int TAG_CPU_ARCH_V7 ;
 int Tag_CPU_arch ;
 int bfd_elf_get_obj_attr_int (int ,int ,int ) ;

__attribute__((used)) static int using_thumb2 (struct elf32_arm_link_hash_table *globals)
{
  int arch = bfd_elf_get_obj_attr_int (globals->obfd, OBJ_ATTR_PROC,
           Tag_CPU_arch);
  return arch == TAG_CPU_ARCH_V6T2 || arch >= TAG_CPU_ARCH_V7;
}
