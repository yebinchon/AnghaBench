
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int byteswap_code; } ;
struct bfd_link_info {int dummy; } ;


 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;

void
bfd_elf32_arm_set_byteswap_code (struct bfd_link_info *info,
     int byteswap_code)
{
  struct elf32_arm_link_hash_table *globals;

  globals = elf32_arm_hash_table (info);
  globals->byteswap_code = byteswap_code;
}
